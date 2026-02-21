<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Affiliate;
use App\Models\AffiliatePayoutRequest;
use App\Models\Referral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AffiliateController extends Controller
{
    public function index()
    {
        $affiliates = Affiliate::with('user', 'referrals')
            ->latest()
            ->get();

        return view('backEnd.affiliate.index', compact('affiliates'));
    }

    public function dashboard()
    {
        $user = Auth::user();

        $affiliate = Affiliate::firstOrCreate(
            ['user_id' => $user->id],
            [
                'referral_code' => $this->generateCode(),
                'commission_rate' => 5.00,
                'commission_type' => 'percent',
                'commission_value' => 5.00,
                'balance' => 0,
                'status' => 'active',
            ]
        );

        $totalEarnings = Referral::where('affiliate_id', $affiliate->id)
            ->whereIn('status', ['confirmed', 'paid'])
            ->sum('commission_amount');

        $pendingEarnings = Referral::where('affiliate_id', $affiliate->id)
            ->where('status', 'pending')
            ->sum('commission_amount');

        $referralLink = url('/?ref=' . $affiliate->referral_code);

        return view('backEnd.affiliate.dashboard', compact(
            'affiliate',
            'totalEarnings',
            'pendingEarnings',
            'referralLink'
        ));
    }

    public function edit($id)
    {
        $affiliate = Affiliate::with('user')->findOrFail($id);

        return view('backEnd.affiliate.edit', compact('affiliate'));
    }

    public function create()
    {
        $users = \App\Models\User::orderBy('name')->get();

        return view('backEnd.affiliate.create', compact('users'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'user_id' => 'nullable|integer',
            'name' => 'nullable|string|max:255',
            'email' => 'nullable|email|max:255',
            'password' => 'nullable|string|min:6',
            'commission_type' => 'required|in:percent,flat',
            'commission_value' => 'required|numeric|min:0',
            'status' => 'required|in:active,inactive',
        ]);

        return DB::transaction(function () use ($data) {
            $userId = $data['user_id'] ?? null;
            if (!$userId) {
                if (empty($data['name']) || empty($data['email']) || empty($data['password'])) {
                    return redirect()
                        ->back()
                        ->withErrors(['user_id' => 'Select a user or provide name, email, and password.'])
                        ->withInput();
                }

                $user = \App\Models\User::create([
                    'name' => $data['name'],
                    'email' => $data['email'],
                    'password' => Hash::make($data['password']),
                    'status' => 1,
                ]);

                $userId = $user->id;
            }

            $affiliate = Affiliate::create([
                'user_id' => $userId,
                'referral_code' => $this->generateCode(),
                'commission_rate' => $data['commission_type'] === 'percent' ? $data['commission_value'] : 0,
                'commission_type' => $data['commission_type'],
                'commission_value' => $data['commission_value'],
                'balance' => 0,
                'status' => $data['status'],
            ]);

            return redirect()
                ->route('admin.affiliate.edit', $affiliate->id)
                ->with('success', 'Affiliate created successfully.');
        });
    }

    public function update(Request $request, $id)
    {
        $affiliate = Affiliate::findOrFail($id);

        $data = $request->validate([
            'commission_type' => 'required|in:percent,flat',
            'commission_value' => 'required|numeric|min:0',
            'balance' => 'required|numeric|min:0',
            'status' => 'required|in:active,inactive',
        ]);

        $data['commission_rate'] = $data['commission_type'] === 'percent' ? $data['commission_value'] : 0;
        $affiliate->update($data);

        return redirect()
            ->route('admin.affiliate.index')
            ->with('success', 'Affiliate updated successfully.');
    }

    public function ban($id)
    {
        $affiliate = Affiliate::findOrFail($id);
        $affiliate->update(['status' => 'inactive']);

        return redirect()
            ->route('admin.affiliate.index')
            ->with('success', 'Affiliate banned successfully.');
    }

    public function unban($id)
    {
        $affiliate = Affiliate::findOrFail($id);
        $affiliate->update(['status' => 'active']);

        return redirect()
            ->route('admin.affiliate.index')
            ->with('success', 'Affiliate activated successfully.');
    }

    public function destroy($id)
    {
        $affiliate = Affiliate::findOrFail($id);
        Referral::where('affiliate_id', $affiliate->id)->delete();
        AffiliatePayoutRequest::where('affiliate_id', $affiliate->id)->delete();
        $affiliate->delete();

        return redirect()
            ->route('admin.affiliate.index')
            ->with('success', 'Affiliate deleted successfully.');
    }

    public function report($id)
    {
        $affiliate = Affiliate::with('user')->findOrFail($id);
        $referrals = Referral::where('affiliate_id', $affiliate->id)->latest()->get();
        $payouts = AffiliatePayoutRequest::where('affiliate_id', $affiliate->id)->latest()->get();

        $totalEarnings = $referrals->whereIn('status', ['confirmed', 'paid'])->sum('commission_amount');
        $pendingEarnings = $referrals->where('status', 'pending')->sum('commission_amount');
        $paidOut = $payouts->where('status', 'paid')->sum('amount');

        return view('backEnd.affiliate.report', compact(
            'affiliate',
            'referrals',
            'payouts',
            'totalEarnings',
            'pendingEarnings',
            'paidOut'
        ));
    }

    public function requestPayout(Request $request, $id)
    {
        $affiliate = Affiliate::findOrFail($id);
        $data = $request->validate([
            'amount' => 'required|numeric|min:1',
        ]);

        AffiliatePayoutRequest::create([
            'affiliate_id' => $affiliate->id,
            'amount' => $data['amount'],
            'status' => 'pending',
        ]);

        return redirect()
            ->route('admin.affiliate.report', $affiliate->id)
            ->with('success', 'Payout request created.');
    }

    public function approvePayout($id)
    {
        $payout = AffiliatePayoutRequest::findOrFail($id);
        $payout->update(['status' => 'approved']);

        return redirect()
            ->back()
            ->with('success', 'Payout approved.');
    }

    public function markPaidPayout($id)
    {
        $payout = AffiliatePayoutRequest::findOrFail($id);
        if ($payout->status === 'paid') {
            return redirect()->back();
        }

        $affiliate = Affiliate::findOrFail($payout->affiliate_id);
        $amount = (float) $payout->amount;

        if ($affiliate->balance < $amount) {
            return redirect()
                ->back()
                ->withErrors(['amount' => 'Affiliate balance is too low.']);
        }

        $affiliate->balance = (float) $affiliate->balance - $amount;
        $affiliate->save();

        $payout->update(['status' => 'paid']);

        return redirect()
            ->back()
            ->with('success', 'Payout marked as paid.');
    }

    private function generateCode(): string
    {
        do {
            $code = Str::upper(Str::random(8));
        } while (Affiliate::where('referral_code', $code)->exists());

        return $code;
    }
}
