<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Affiliate;
use App\Models\Referral;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AffiliateAuthController extends Controller
{
    public function showLogin()
    {
        return view('frontEnd.layouts.pages.affiliate_login');
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required|string',
        ]);

        if (Auth::guard('affiliate')->attempt($credentials)) {
            $request->session()->regenerate();

            $affiliate = Affiliate::where('user_id', Auth::guard('affiliate')->id())
                ->where('status', 'active')
                ->first();

            if (!$affiliate) {
                Auth::guard('affiliate')->logout();
                return back()->withErrors(['email' => 'Affiliate account is not active.']);
            }

            return redirect()->route('affiliate.dashboard');
        }

        return back()->withErrors(['email' => 'Invalid credentials.'])->withInput();
    }

    public function logout(Request $request)
    {
        Auth::guard('affiliate')->logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('affiliate.login');
    }

    public function dashboard()
    {
        $user = Auth::guard('affiliate')->user();
        $affiliate = Affiliate::where('user_id', $user->id)->firstOrFail();

        $referrals = Referral::where('affiliate_id', $affiliate->id)->latest()->get();
        $totalEarnings = $referrals->whereIn('status', ['confirmed', 'paid'])->sum('commission_amount');
        $pendingEarnings = $referrals->where('status', 'pending')->sum('commission_amount');
        $totalCommission = $totalEarnings + $pendingEarnings;

        $referralLink = url('/?ref=' . $affiliate->referral_code);

        return view('frontEnd.layouts.pages.affiliate_dashboard', compact(
            'affiliate',
            'referrals',
            'totalEarnings',
            'pendingEarnings',
            'totalCommission',
            'referralLink'
        ));
    }
}
