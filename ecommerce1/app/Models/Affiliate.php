<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\AffiliatePayoutRequest;

class Affiliate extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        'commission_rate' => 'float',
        'commission_value' => 'float',
        'balance' => 'float',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function referrals()
    {
        return $this->hasMany(Referral::class, 'affiliate_id');
    }

    public function payoutRequests()
    {
        return $this->hasMany(AffiliatePayoutRequest::class, 'affiliate_id');
    }
}
