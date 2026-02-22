@extends('frontEnd.layouts.master')
@section('title','Affiliate Login')
@section('content')
<section class="auth-section affiliate-auth">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-7">
                <div class="form-content affiliate-auth-card">
                    <div class="auth-head">
                        <p class="auth-title mb-1">Affiliate Login</p>
                        <small class="text-muted">Access your affiliate panel</small>
                    </div>

                    <form action="{{ route('affiliate.login.submit') }}" method="POST" data-parsley-validate="">
                        @csrf
                        <div class="form-group mb-3">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" class="form-control affiliate-input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required>
                            @error('email')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label for="password">Password</label>
                            <input type="password" id="password" class="form-control affiliate-input @error('password') is-invalid @enderror" name="password" required>
                            @error('password')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <button class="submit-btn affiliate-submit">Login</button>
                    </form>

                    <div class="register-now no-account affiliate-foot">
                        <p>Don't have an account?</p>
                        <a href="{{ route('affiliate.register') }}"><i data-feather="edit-3"></i> Apply as Affiliate</a>
                    </div>
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

  .affiliate-auth .auth-head {
    margin-bottom: 14px;
  }

  .affiliate-auth .auth-title {
    font-size: 28px;
    font-weight: 700;
    color: #0f172a;
  }

  .affiliate-auth .affiliate-input {
    height: 46px;
    border-radius: 10px;
    border: 1px solid #d7deea;
    background: #fff;
    font-size: 14px;
    padding: 10px 12px;
  }

  .affiliate-auth .affiliate-input:focus {
    border-color: #8fb4ff;
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.14);
  }

  .affiliate-auth .affiliate-submit {
    width: 100%;
    min-height: 46px;
    border-radius: 10px;
    font-weight: 600;
  }

  .affiliate-auth .affiliate-foot {
    margin-top: 14px;
    border-top: 1px solid #edf1f8;
    padding-top: 14px;
  }

  .affiliate-auth .affiliate-foot p {
    margin-bottom: 6px;
    color: #64748b;
    font-size: 14px;
  }

  @media (max-width: 576px) {
    .affiliate-auth .affiliate-auth-card {
      padding: 18px;
      border-radius: 12px;
    }

    .affiliate-auth .auth-title {
      font-size: 24px;
    }
  }
</style>
@endpush
