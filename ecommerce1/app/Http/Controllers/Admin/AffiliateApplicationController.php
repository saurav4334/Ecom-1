<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Affiliate;
use App\Models\AffiliateApplication;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;
use App\Mail\AffiliateApplicationApproved;
use App\Mail\AffiliateApplicationRejected;

class AffiliateApplicationController extends Controller
{
    public function index()
    {
        $applications = AffiliateApplication::latest()->get();

        return view('backEnd.affiliate.applications', compact('applications'));
    }

    public function approve(\Illuminate\Http\Request $request, $id)
    {
        $application = AffiliateApplication::findOrFail($id);
        if ($application->status === 'approved') {
            return redirect()->back();
        }

        $data = $request->validate([
            'commission_type' => 'required|in:percent,flat',
            'commission_value' => 'required|numeric|min:0',
        ]);

        DB::transaction(function () use ($application, $data) {
            $user = User::create([
                'name' => $application->name,
                'email' => $application->email,
                'password' => $application->password,
                'status' => 1,
                'image' => 'public/uploads/default/user.png',
            ]);

            Affiliate::create([
                'user_id' => $user->id,
                'phone' => $application->phone,
                'nid_number' => $application->nid_number,
                'email' => $application->email,
                'address' => $application->address,
                'bank_account_number' => $application->bank_account_number,
                'referral_code' => $this->generateCode(),
                'commission_rate' => $data['commission_type'] === 'percent' ? $data['commission_value'] : 0,
                'commission_type' => $data['commission_type'],
                'commission_value' => $data['commission_value'],
                'balance' => 0,
                'status' => 'active',
            ]);

            $application->update(['status' => 'approved']);
            $loginUrl = URL::temporarySignedRoute(
                'affiliate.auto_login',
                now()->addDays(7),
                ['user' => $user->id]
            );

            try {
                Mail::to($application->email)->send(
                    new AffiliateApplicationApproved($application->name, $loginUrl)
                );
            } catch (\Throwable $e) {
                \Log::error('Affiliate approval email failed: ' . $e->getMessage());
            }
        });

        return redirect()->back()->with('success', 'Application approved.');
    }

    public function reject($id)
    {
        $application = AffiliateApplication::findOrFail($id);
        $application->update(['status' => 'rejected']);

        try {
            Mail::to($application->email)->send(
                new AffiliateApplicationRejected($application->name)
            );
        } catch (\Throwable $e) {
            \Log::error('Affiliate rejection email failed: ' . $e->getMessage());
        }

        return redirect()->back()->with('success', 'Application rejected.');
    }

    public function destroy($id)
    {
        $application = AffiliateApplication::findOrFail($id);
        $application->delete();

        return redirect()->back()->with('success', 'Application deleted.');
    }

    private function generateCode(): string
    {
        do {
            $code = Str::upper(Str::random(8));
        } while (Affiliate::where('referral_code', $code)->exists());

        return $code;
    }
}
