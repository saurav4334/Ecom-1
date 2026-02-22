@extends('frontEnd.layouts.master')
@section('title','Affiliate Registration')
@section('content')
<section class="auth-section affiliate-auth">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="form-content affiliate-auth-card text-center">
                    <div class="auth-head mb-2">
                        <p class="auth-title mb-1">Affiliate Registration</p>
                        <small class="text-muted">Program availability status</small>
                    </div>
                    <p class="closed-message">Affiliate registration is currently closed.</p>
                    <a href="{{ route('affiliate.login') }}" class="submit-btn affiliate-submit d-inline-flex align-items-center justify-content-center">Go to Login</a>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection

@push('css')
<style>
  .affiliate-auth .affiliate-auth-card {
    background: linear-gradient(180deg, #ffffff 0%, #f9fbff 100%);
    border: 1px solid #e8edf6;
    border-radius: 16px;
    padding: 24px;
    box-shadow: 0 14px 30px rgba(15, 23, 42, 0.07);
  }

  .affiliate-auth .auth-title {
    font-size: 28px;
    font-weight: 700;
    color: #0f172a;
  }

  .affiliate-auth .closed-message {
    color: #475569;
    margin: 10px 0 16px;
    font-size: 15px;
  }

  .affiliate-auth .affiliate-submit {
    min-height: 46px;
    border-radius: 10px;
    font-weight: 600;
    min-width: 180px;
  }

  @media (max-width: 576px) {
    .affiliate-auth .affiliate-auth-card {
      padding: 18px;
      border-radius: 12px;
    }

    .affiliate-auth .auth-title {
      font-size: 24px;
    }

    .affiliate-auth .affiliate-submit {
      width: 100%;
    }
  }
</style>
@endpush
