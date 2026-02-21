<?php

namespace App\Http\Middleware;

use App\Models\Affiliate;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use Symfony\Component\HttpFoundation\Response;

class TrackReferral
{
    public function handle(Request $request, Closure $next): Response
    {
        $code = $request->query('ref');
        if ($code) {
            $affiliate = Affiliate::where('referral_code', $code)
                ->where('status', 'active')
                ->first();

            if ($affiliate) {
                Cookie::queue(
                    Cookie::make('affiliate_ref', $code, 60 * 24 * 30)
                );
            }
        }

        return $next($request);
    }
}
