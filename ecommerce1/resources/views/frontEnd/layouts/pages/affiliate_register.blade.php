@extends('frontEnd.layouts.master')
@section('title','Affiliate Registration')
@section('content')
<section class="auth-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-6">
                <div class="form-content">
                    <p class="auth-title">Affiliate Registration</p>
                    @if(session('success'))
                        <div class="alert alert-success">{{ session('success') }}</div>
                    @endif
                    <form action="{{ route('affiliate.register.store') }}" method="POST" data-parsley-validate="">
                        @csrf

                        @php $fields = $setting->fields ?? []; @endphp

                        @if(!empty($fields['name']['enabled']))
                        <div class="form-group mb-3">
                            <label for="name">{{ $fields['name']['label'] ?? 'Name' }}</label>
                            <input type="text" id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="Your name" {{ !empty($fields['name']['required']) ? 'required' : '' }}>
                            @error('name')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        @if(!empty($fields['phone']['enabled']))
                        <div class="form-group mb-3">
                            <label for="phone">{{ $fields['phone']['label'] ?? 'Phone' }}</label>
                            <input type="text" id="phone" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}" placeholder="Your phone" {{ !empty($fields['phone']['required']) ? 'required' : '' }}>
                            @error('phone')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        @if(!empty($fields['nid_number']['enabled']))
                        <div class="form-group mb-3">
                            <label for="nid_number">{{ $fields['nid_number']['label'] ?? 'NID Number' }}</label>
                            <input type="text" id="nid_number" class="form-control @error('nid_number') is-invalid @enderror" name="nid_number" value="{{ old('nid_number') }}" placeholder="NID number" {{ !empty($fields['nid_number']['required']) ? 'required' : '' }}>
                            @error('nid_number')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        @if(!empty($fields['email']['enabled']))
                        <div class="form-group mb-3">
                            <label for="email">{{ $fields['email']['label'] ?? 'Email' }}</label>
                            <input type="email" id="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Your email" {{ !empty($fields['email']['required']) ? 'required' : '' }}>
                            @error('email')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        @if(!empty($fields['address']['enabled']))
                        <div class="form-group mb-3">
                            <label for="address">{{ $fields['address']['label'] ?? 'Address' }}</label>
                            <input type="text" id="address" class="form-control @error('address') is-invalid @enderror" name="address" value="{{ old('address') }}" placeholder="Your address" {{ !empty($fields['address']['required']) ? 'required' : '' }}>
                            @error('address')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        @if(!empty($fields['bank_account_number']['enabled']))
                        <div class="form-group mb-3">
                            <label for="bank_account_number">{{ $fields['bank_account_number']['label'] ?? 'Bank Account Number' }}</label>
                            <input type="text" id="bank_account_number" class="form-control @error('bank_account_number') is-invalid @enderror" name="bank_account_number" value="{{ old('bank_account_number') }}" placeholder="Bank account number" {{ !empty($fields['bank_account_number']['required']) ? 'required' : '' }}>
                            @error('bank_account_number')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        @endif

                        <div class="form-group mb-3">
                            <label for="password">Password</label>
                            <input type="password" id="password" class="form-control @error('password') is-invalid @enderror" name="password" required>
                            @error('password')
                                <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="form-group mb-3">
                            <label for="password_confirmation">Confirm Password</label>
                            <input type="password" id="password_confirmation" class="form-control" name="password_confirmation" required>
                        </div>

                        <button class="submit-btn">Submit Application</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
