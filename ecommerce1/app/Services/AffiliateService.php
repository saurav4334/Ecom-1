<?php

namespace App\Services;

class AffiliateService
{
    public function calculateCommission(float $subtotal, string $type, float $value): float
    {
        if ($subtotal <= 0 || $value <= 0) {
            return 0.0;
        }

        if ($type === 'flat') {
            return round($value, 2);
        }

        return round(($subtotal * $value) / 100, 2);
    }
}
