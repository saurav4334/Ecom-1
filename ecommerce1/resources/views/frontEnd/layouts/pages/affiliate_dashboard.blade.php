@extends('frontEnd.layouts.master')
@section('title','Affiliate Dashboard')
@section('content')
<section class="auth-section affiliate-dashboard">
    <div class="container">
        <div class="row justify-content-center g-4">
            <div class="col-xl-11">
                <div class="dashboard-wrap">
                    <div class="dashboard-header">
                        <div>
                            <p class="auth-title mb-1">Affiliate Dashboard</p>
                            <small class="text-muted">Track your referral performance and earnings</small>
                        </div>
                        <form action="{{ route('affiliate.logout') }}" method="POST" class="logout-form">
                            @csrf
                            <button class="btn-logout" type="submit">Logout</button>
                        </form>
                    </div>

                    <div class="row g-3 mb-4">
                        <div class="col-sm-6 col-lg-3">
                            <div class="metric-card">
                                <p class="metric-label">Total Earnings</p>
                                <h5 class="metric-value">৳ {{ number_format($totalEarnings, 2) }}</h5>
                                <span class="metric-chip">Confirmed</span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="metric-card">
                                <p class="metric-label">Pending Earnings</p>
                                <h5 class="metric-value">৳ {{ number_format($pendingEarnings, 2) }}</h5>
                                <span class="metric-chip metric-chip--warn">Pending</span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="metric-card">
                                <p class="metric-label">Total Commission</p>
                                <h5 class="metric-value">৳ {{ number_format($totalCommission, 2) }}</h5>
                                <span class="metric-chip">All Time</span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-3">
                            <div class="metric-card">
                                <p class="metric-label">Available Balance</p>
                                <h5 class="metric-value">৳ {{ number_format($affiliate->balance, 2) }}</h5>
                                <span class="metric-chip metric-chip--ok">Withdrawable</span>
                            </div>
                        </div>
                    </div>

                    <div class="row g-3 mb-4">
                        <div class="col-lg-7">
                            <div class="panel-card h-100">
                                <div class="panel-head">
                                    <h5>Your Referral Link</h5>
                                    <span class="panel-note">Share this to earn commission</span>
                                </div>
                                <div class="ref-link-wrap">
                                    <input id="affiliateRefLink" type="text" class="form-control ref-link-input" value="{{ $referralLink }}" readonly>
                                    <button id="copyRefBtn" class="btn-copy" type="button" data-link="{{ $referralLink }}">Copy</button>
                                </div>
                                <div class="mini-stats">
                                    <div class="mini-stat">
                                        <span>Link Hits</span>
                                        <strong>{{ (int) ($affiliate->link_hits ?? 0) }}</strong>
                                    </div>
                                    <div class="mini-stat">
                                        <span>Purchases</span>
                                        <strong>{{ (int) ($affiliate->link_purchases ?? 0) }}</strong>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-5">
                            <div class="panel-card h-100">
                                <div class="panel-head">
                                    <h5>Your Profile</h5>
                                    <span class="panel-note">Account information</span>
                                </div>
                                <div class="profile-grid">
                                    <div class="profile-item"><span>Name</span><strong>{{ $affiliate->user->name ?? $affiliate->name ?? 'N/A' }}</strong></div>
                                    <div class="profile-item"><span>Email</span><strong>{{ $affiliate->user->email ?? $affiliate->email ?? 'N/A' }}</strong></div>
                                    <div class="profile-item"><span>Phone</span><strong>{{ $affiliate->phone ?? 'N/A' }}</strong></div>
                                    <div class="profile-item"><span>NID</span><strong>{{ $affiliate->nid_number ?? 'N/A' }}</strong></div>
                                    <div class="profile-item profile-item--full"><span>Address</span><strong>{{ $affiliate->address ?? 'N/A' }}</strong></div>
                                    <div class="profile-item profile-item--full"><span>Bank Account</span><strong>{{ $affiliate->bank_account_number ?? 'N/A' }}</strong></div>
                                    <div class="profile-item"><span>Referral Code</span><strong>{{ $affiliate->referral_code ?? 'N/A' }}</strong></div>
                                    <div class="profile-item"><span>Status</span><strong class="status-pill">{{ ucfirst($affiliate->status ?? 'inactive') }}</strong></div>
                                    <div class="profile-item"><span>Commission Type</span><strong>{{ ucfirst($affiliate->commission_type ?? 'percentage') }}</strong></div>
                                    <div class="profile-item"><span>Commission Value</span><strong>{{ number_format($affiliate->commission_rate ?? 0, 2) }}</strong></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="panel-card">
                        <div class="panel-head">
                            <h5>Referral Details</h5>
                            <span class="panel-note">Latest referral commissions</span>
                        </div>
                        <div class="table-responsive">
                            <table class="table referral-table align-middle mb-0">
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
                                            <td>৳ {{ number_format($ref->commission_amount, 2) }}</td>
                                            <td>
                                                <span class="status-badge status-badge--{{ strtolower($ref->status) }}">
                                                    {{ ucfirst($ref->status) }}
                                                </span>
                                            </td>
                                            <td>{{ $ref->created_at->format('Y-m-d') }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="4" class="empty-row">No referrals yet.</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('css')
<style>
  .affiliate-dashboard .dashboard-wrap {
    background: linear-gradient(180deg, #ffffff 0%, #f9fbff 100%);
    border: 1px solid #e9edf5;
    border-radius: 16px;
    padding: 24px;
    box-shadow: 0 14px 32px rgba(18, 44, 82, 0.06);
  }

  .affiliate-dashboard .dashboard-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 12px;
    margin-bottom: 18px;
  }

  .affiliate-dashboard .btn-logout {
    border: 1px solid #d0d6e3;
    background: #fff;
    color: #223;
    padding: 9px 16px;
    border-radius: 10px;
    font-weight: 600;
  }

  .affiliate-dashboard .btn-logout:hover {
    border-color: #b9c4d8;
    background: #f8faff;
  }

  .affiliate-dashboard .metric-card {
    background: #fff;
    border: 1px solid #e9edf5;
    border-radius: 14px;
    padding: 16px;
    height: 100%;
  }

  .affiliate-dashboard .metric-label {
    margin: 0 0 6px;
    color: #6b7280;
    font-size: 13px;
    font-weight: 500;
  }

  .affiliate-dashboard .metric-value {
    margin: 0;
    color: #0f172a;
    font-size: 24px;
    font-weight: 700;
  }

  .affiliate-dashboard .metric-chip {
    display: inline-block;
    margin-top: 8px;
    padding: 4px 9px;
    border-radius: 999px;
    background: #eff6ff;
    color: #2563eb;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: .2px;
  }

  .affiliate-dashboard .metric-chip--warn {
    background: #fff8e8;
    color: #b7791f;
  }

  .affiliate-dashboard .metric-chip--ok {
    background: #ecfdf3;
    color: #15803d;
  }

  .affiliate-dashboard .panel-card {
    background: #fff;
    border: 1px solid #e9edf5;
    border-radius: 14px;
    padding: 18px;
  }

  .affiliate-dashboard .panel-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 10px;
    margin-bottom: 12px;
  }

  .affiliate-dashboard .panel-head h5 {
    margin: 0;
    font-size: 17px;
    font-weight: 700;
    color: #111827;
  }

  .affiliate-dashboard .panel-note {
    color: #6b7280;
    font-size: 12px;
  }

  .affiliate-dashboard .ref-link-wrap {
    display: flex;
    gap: 8px;
  }

  .affiliate-dashboard .ref-link-input {
    border-radius: 10px;
    border-color: #d6dbe7;
    font-size: 14px;
  }

  .affiliate-dashboard .btn-copy {
    border: 0;
    background: #0f172a;
    color: #fff;
    min-width: 78px;
    border-radius: 10px;
    font-weight: 600;
  }

  .affiliate-dashboard .btn-copy:hover {
    background: #1e293b;
  }

  .affiliate-dashboard .mini-stats {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 10px;
    margin-top: 12px;
  }

  .affiliate-dashboard .mini-stat {
    background: #f6f9ff;
    border: 1px solid #e4ecff;
    border-radius: 10px;
    padding: 10px;
  }

  .affiliate-dashboard .mini-stat span {
    color: #64748b;
    font-size: 12px;
    display: block;
    margin-bottom: 2px;
  }

  .affiliate-dashboard .mini-stat strong {
    font-size: 18px;
    color: #0f172a;
  }

  .affiliate-dashboard .profile-grid {
    display: grid;
    grid-template-columns: repeat(2, minmax(0, 1fr));
    gap: 10px;
  }

  .affiliate-dashboard .profile-item {
    background: #fafcff;
    border: 1px solid #e9edf5;
    border-radius: 10px;
    padding: 10px;
  }

  .affiliate-dashboard .profile-item--full {
    grid-column: 1 / -1;
  }

  .affiliate-dashboard .profile-item span {
    display: block;
    color: #64748b;
    font-size: 12px;
    margin-bottom: 3px;
  }

  .affiliate-dashboard .profile-item strong {
    color: #0f172a;
    font-size: 14px;
    word-break: break-word;
  }

  .affiliate-dashboard .status-pill {
    color: #15803d;
  }

  .affiliate-dashboard .referral-table th {
    border-top: 0;
    font-size: 12px;
    color: #64748b;
    text-transform: uppercase;
    letter-spacing: .3px;
    background: #f8fbff;
  }

  .affiliate-dashboard .referral-table td {
    padding: 12px 14px;
    color: #0f172a;
    border-color: #eef2f8;
    font-size: 14px;
  }

  .affiliate-dashboard .status-badge {
    display: inline-block;
    padding: 4px 10px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 700;
  }

  .affiliate-dashboard .status-badge--pending {
    background: #fff7ed;
    color: #b45309;
  }

  .affiliate-dashboard .status-badge--confirmed {
    background: #ecfdf3;
    color: #15803d;
  }

  .affiliate-dashboard .status-badge--paid {
    background: #eff6ff;
    color: #1d4ed8;
  }

  .affiliate-dashboard .empty-row {
    text-align: center;
    color: #6b7280;
    padding: 24px 12px;
  }

  @media (max-width: 767px) {
    .affiliate-dashboard .dashboard-wrap {
      padding: 16px;
      border-radius: 12px;
    }

    .affiliate-dashboard .dashboard-header {
      align-items: flex-start;
      flex-direction: column;
    }

    .affiliate-dashboard .logout-form {
      width: 100%;
    }

    .affiliate-dashboard .btn-logout {
      width: 100%;
    }

    .affiliate-dashboard .ref-link-wrap {
      flex-direction: column;
    }

    .affiliate-dashboard .btn-copy {
      width: 100%;
      min-height: 42px;
    }

    .affiliate-dashboard .profile-grid,
    .affiliate-dashboard .mini-stats {
      grid-template-columns: 1fr;
    }
  }
</style>
@endpush

@push('script')
<script>
  (function () {
    var btn = document.getElementById('copyRefBtn');
    if (!btn) return;

    btn.addEventListener('click', function () {
      var link = btn.getAttribute('data-link') || '';
      if (!link) return;

      navigator.clipboard.writeText(link).then(function () {
        var oldText = btn.textContent;
        btn.textContent = 'Copied';
        setTimeout(function () {
          btn.textContent = oldText;
        }, 1200);
      });
    });
  })();
</script>
@endpush
