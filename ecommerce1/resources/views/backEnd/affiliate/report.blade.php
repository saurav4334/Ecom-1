@extends('backEnd.layouts.master')
@section('title','Affiliate Report')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="page-title">Affiliate Report</h4>
                <a href="{{ route('admin.affiliate.index') }}" class="btn btn-primary">Back to List</a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <p class="text-muted mb-1">Affiliate</p>
                    <h5 class="mb-0">{{ $affiliate->user->name ?? 'N/A' }}</h5>
                    <small class="text-muted">{{ $affiliate->user->email ?? '' }}</small>
                    <div class="mt-3">
                        <div>Referral Code: <strong>{{ $affiliate->referral_code }}</strong></div>
                        <div>Status: <strong>{{ $affiliate->status }}</strong></div>
                        <div>Commission: 
                            <strong>
                                @if(($affiliate->commission_type ?? 'percent') === 'flat')
                                    {{ number_format($affiliate->commission_value ?? 0, 2) }} flat
                                @else
                                    {{ number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2) }}%
                                @endif
                            </strong>
                        </div>
                        <div>Balance: <strong>{{ number_format($affiliate->balance, 2) }}</strong></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Total Earnings</p>
                            <h4 class="mb-0">{{ number_format($totalEarnings, 2) }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Pending Earnings</p>
                            <h4 class="mb-0">{{ number_format($pendingEarnings, 2) }}</h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Paid Out</p>
                            <h4 class="mb-0">{{ number_format($paidOut, 2) }}</h4>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Create Payout Request</h5>
                    <form action="{{ route('admin.affiliate.payout.request', $affiliate->id) }}" method="POST" class="row g-2">
                        @csrf
                        <div class="col-md-4">
                            <input type="number" step="0.01" class="form-control" name="amount" placeholder="Amount" required>
                        </div>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-success">Create Request</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Payout Requests</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($payouts as $payout)
                                <tr>
                                    <td>#{{ $payout->id }}</td>
                                    <td>{{ number_format($payout->amount, 2) }}</td>
                                    <td>{{ $payout->status }}</td>
                                    <td>
                                        @if($payout->status === 'pending')
                                            <form method="post" action="{{ route('admin.affiliate.payout.approve', $payout->id) }}" class="d-inline">
                                                @csrf
                                                <button type="submit" class="btn btn-xs btn-primary">Approve</button>
                                            </form>
                                        @endif
                                        @if($payout->status !== 'paid')
                                            <form method="post" action="{{ route('admin.affiliate.payout.paid', $payout->id) }}" class="d-inline">
                                                @csrf
                                                <button type="submit" class="btn btn-xs btn-success">Mark Paid</button>
                                            </form>
                                        @endif
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="4">No payout requests.</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Referral Details</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Order</th>
                                <th>Commission</th>
                                <th>Status</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($referrals as $ref)
                                <tr>
                                    <td>#{{ $ref->order_id }}</td>
                                    <td>{{ number_format($ref->commission_amount, 2) }}</td>
                                    <td>{{ $ref->status }}</td>
                                    <td>{{ $ref->created_at->format('Y-m-d') }}</td>
                                </tr>
                            @empty
                                <tr><td colspan="4">No referrals yet.</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
