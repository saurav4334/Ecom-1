@extends('backEnd.layouts.master')
@section('title','Affiliate Dashboard')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center">
                <h4 class="page-title">Affiliate Dashboard</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-4 col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="flex-grow-1">
                            <p class="text-muted mb-1">Total Earnings</p>
                            <h4 class="mb-0">{{ number_format($totalEarnings, 2) }}</h4>
                        </div>
                        <div class="text-primary fs-2">
                            ৳
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="flex-grow-1">
                            <p class="text-muted mb-1">Pending Earnings</p>
                            <h4 class="mb-0">{{ number_format($pendingEarnings, 2) }}</h4>
                        </div>
                        <div class="text-warning fs-2">
                            ৳
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-12">
            <div class="card">
                <div class="card-body">
                    <p class="text-muted mb-2">Commission</p>
                    <h4 class="mb-0">
                        @if(($affiliate->commission_type ?? 'percent') === 'flat')
                            {{ number_format($affiliate->commission_value ?? 0, 2) }} flat
                        @else
                            {{ number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2) }}%
                        @endif
                    </h4>
                    <small class="text-muted d-block mt-2">Current balance: {{ number_format($affiliate->balance, 2) }}</small>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-8">
            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Your Referral Link</h5>
                    <div class="input-group">
                        <input type="text" class="form-control" value="{{ $referralLink }}" readonly>
                        <button class="btn btn-primary" type="button" onclick="navigator.clipboard.writeText('{{ $referralLink }}')">
                            Copy
                        </button>
                    </div>
                    <small class="text-muted d-block mt-2">Share this link to earn commissions.</small>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

