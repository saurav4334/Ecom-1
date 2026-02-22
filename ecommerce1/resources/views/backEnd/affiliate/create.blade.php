@extends('backEnd.layouts.master')
@section('title','Create Affiliate')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="page-title">Create Affiliate</h4>
                <a href="{{ route('admin.affiliate.index') }}" class="btn btn-primary">
                    Back to List
                </a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.affiliate.store') }}" method="POST" class="row g-3" data-parsley-validate>
                        @csrf
                        <div class="col-12">
                            <label class="form-label">Select Existing User (optional)</label>
                            <select class="form-control" name="user_id">
                                <option value="">-- Select User --</option>
                                @foreach($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }} ({{ $user->email }})</option>
                                @endforeach
                            </select>
                            <small class="text-muted">If you don’t select a user, fill in the fields below to create one.</small>
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Name</label>
                            <input type="text" class="form-control" name="name" value="{{ old('name') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Email</label>
                            <input type="email" class="form-control" name="email" value="{{ old('email') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password">
                        </div>

                        <div class="col-md-6">
                            <label class="form-label">Phone</label>
                            <input type="text" class="form-control" name="phone" value="{{ old('phone') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">NID Number</label>
                            <input type="text" class="form-control" name="nid_number" value="{{ old('nid_number') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-control" name="address" value="{{ old('address') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Bank Account Number</label>
                            <input type="text" class="form-control" name="bank_account_number" value="{{ old('bank_account_number') }}">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Payout Method</label>
                            <input type="text" class="form-control" name="payout_method" value="{{ old('payout_method') }}" placeholder="Bank/Mobile">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Payout Account Name</label>
                            <input type="text" class="form-control" name="payout_account_name" value="{{ old('payout_account_name') }}">
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">Commission Type</label>
                            <select class="form-control @error('commission_type') is-invalid @enderror" name="commission_type" required>
                                <option value="percent" @if(old('commission_type')==='percent') selected @endif>Percent</option>
                                <option value="flat" @if(old('commission_type')==='flat') selected @endif>Flat</option>
                            </select>
                            @error('commission_type')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Commission Value</label>
                            <input type="number" step="0.01" class="form-control @error('commission_value') is-invalid @enderror" name="commission_value" value="{{ old('commission_value', 5) }}" required>
                            @error('commission_value')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-md-3">
                            <label class="form-label">Status</label>
                            <select class="form-control @error('status') is-invalid @enderror" name="status" required>
                                <option value="active" @if(old('status','active')==='active') selected @endif>Active</option>
                                <option value="inactive" @if(old('status')==='inactive') selected @endif>Inactive</option>
                            </select>
                            @error('status')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>

                        <div class="col-12">
                            <button type="submit" class="btn btn-success">Create</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
