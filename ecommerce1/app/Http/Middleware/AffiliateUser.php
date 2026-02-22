<?php

namespace App\Http\Middleware;

use App\Models\Affiliate;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class AffiliateUser
{
    public function handle(Request $request, Closure $next): Response
    {
        $user = Auth::guard('affiliate')->user();
        if (!$user) {
            return redirect()->route('affiliate.login');
        }

        $affiliate = Affiliate::where('user_id', $user->id)
            ->where('status', 'active')
            ->first();

        if (!$affiliate) {
            Auth::guard('affiliate')->logout();
            return redirect()->route('affiliate.login')->withErrors(['email' => 'Affiliate account is not active.']);
        }

        return $next($request);
    }
}
