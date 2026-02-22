@extends('frontEnd.layouts.master')
@section('title','Affiliate Registration')
@section('content')
<section class="auth-section affiliate-auth affiliate-register-page">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-7 col-md-10">
                <div class="form-content affiliate-auth-card">
                    <div class="auth-head">
                        <p class="auth-title mb-1">Affiliate Registration</p>
                        <small class="text-muted">Submit your application to join our affiliate program</small>
                    </div>

                    @if(session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif

                    @php $fields = $setting->fields ?? []; @endphp

                    <form action="{{ route('affiliate.register.store') }}" method="POST" data-parsley-validate="">
                        @csrf

                        <div class="row g-3">
                            @if(!empty($fields['name']['enabled']))
                            <div class="col-md-6">
                                <label for="name">{{ $fields['name']['label'] ?? 'Name' }}</label>
                                <input type="text" id="name" class="form-control affiliate-input @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="Your name" {{ !empty($fields['name']['required']) ? 'required' : '' }}>
                                @error('name')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            @if(!empty($fields['phone']['enabled']))
                            <div class="col-md-6">
                                <label for="phone">{{ $fields['phone']['label'] ?? 'Phone' }}</label>
                                <input type="text" id="phone" class="form-control affiliate-input @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" placeholder="Your phone" {{ !empty($fields['phone']['required']) ? 'required' : '' }}>
                                @error('phone')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            @if(!empty($fields['nid_number']['enabled']))
                            <div class="col-md-6">
                                <label for="nid_number">{{ $fields['nid_number']['label'] ?? 'NID Number' }}</label>
                                <input type="text" id="nid_number" class="form-control affiliate-input @error('nid_number') is-invalid @enderror" name="nid_number" value="{{ old('nid_number') }}" placeholder="NID number" {{ !empty($fields['nid_number']['required']) ? 'required' : '' }}>
                                @error('nid_number')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            @if(!empty($fields['email']['enabled']))
                            <div class="col-md-6">
                                <label for="email">{{ $fields['email']['label'] ?? 'Email' }}</label>
                                <input type="email" id="email" class="form-control affiliate-input @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Your email" {{ !empty($fields['email']['required']) ? 'required' : '' }}>
                                @error('email')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            @if(!empty($fields['address']['enabled']))
                            <div class="col-md-6">
                                <label for="address">{{ $fields['address']['label'] ?? 'Address' }}</label>
                                <input type="text" id="address" class="form-control affiliate-input @error('address') is-invalid @enderror" name="address" value="{{ old('address') }}" placeholder="Your address" {{ !empty($fields['address']['required']) ? 'required' : '' }}>
                                @error('address')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            @if(!empty($fields['bank_account_number']['enabled']))
                            <div class="col-md-6">
                                <label for="bank_account_number">{{ $fields['bank_account_number']['label'] ?? 'Bank Account Number' }}</label>
                                <input type="text" id="bank_account_number" class="form-control affiliate-input @error('bank_account_number') is-invalid @enderror" name="bank_account_number" value="{{ old('bank_account_number') }}" placeholder="Bank account number" {{ !empty($fields['bank_account_number']['required']) ? 'required' : '' }}>
                                @error('bank_account_number')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>
                            @endif

                            <div class="col-md-6">
                                <label for="password">Password</label>
                                <input type="password" id="password" class="form-control affiliate-input @error('password') is-invalid @enderror" name="password" required>
                                @error('password')
                                    <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label for="password_confirmation">Confirm Password</label>
                                <input type="password" id="password_confirmation" class="form-control affiliate-input" name="password_confirmation" required>
                            </div>
                        </div>

                        <button class="submit-btn affiliate-submit mt-3">Submit Application</button>
                    </form>

                    <div class="register-now no-account affiliate-foot">
                        <p>Already have an account?</p>
                        <a href="{{ route('affiliate.login') }}"><i data-feather="log-in"></i> Login</a>
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
