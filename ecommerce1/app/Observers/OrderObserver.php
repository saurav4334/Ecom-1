<?php

namespace App\Observers;

use App\Models\Affiliate;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\Referral;
use App\Services\AffiliateService;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\Facades\Schema;

class OrderObserver
{
    public function updated(Order $order): void
    {
        if (!Schema::hasColumn('orders', 'payment_status')) {
            return;
        }

        $currentStatus = (string) $order->payment_status;
        $previousStatus = (string) $order->getOriginal('payment_status');

        if ($currentStatus !== 'paid') {
            return;
        }

        if ($previousStatus === 'paid') {
            return;
        }

        $refCode = Cookie::get('affiliate_ref');
        if (!$refCode) {
            return;
        }

        $affiliate = Affiliate::where('referral_code', $refCode)
            ->where('status', 'active')
            ->first();

        if (!$affiliate) {
            return;
        }

        if (Referral::where('affiliate_id', $affiliate->id)->where('order_id', $order->id)->exists()) {
            return;
        }

        $subtotal = (float) OrderDetails::where('order_id', $order->id)
            ->get()
            ->sum(function ($item) {
                return (float) $item->sale_price * (int) $item->qty;
            });

        $type = $affiliate->commission_type ?: 'percent';
        $value = $affiliate->commission_value ?? $affiliate->commission_rate ?? 0;

        $service = new AffiliateService();
        $commission = $service->calculateCommission($subtotal, $type, (float) $value);

        Referral::create([
            'affiliate_id' => $affiliate->id,
            'order_id' => $order->id,
            'commission_amount' => $commission,
            'status' => 'confirmed',
        ]);

        $affiliate->balance = (float) $affiliate->balance + $commission;
        $affiliate->link_purchases = (int) $affiliate->link_purchases + 1;
        $affiliate->save();
    }
}
