@extends('backEnd.layouts.master')
@section('title','Edit Affiliate')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="page-title">Edit Affiliate</h4>
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
                    <form action="{{ route('admin.affiliate.update', $affiliate->id) }}" method="POST" class="row g-3" data-parsley-validate>
                        @csrf
                        <div class="col-md-6">
                            <label class="form-label">User</label>
                            <input type="text" class="form-control" value="{{ $affiliate->user->name ?? 'N/A' }}" readonly>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Referral Code</label>
                            <input type="text" class="form-control" value="{{ $affiliate->referral_code }}" readonly>
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Commission Type</label>
                            <select class="form-control @error('commission_type') is-invalid @enderror" name="commission_type" required>
                                <option value="percent" @if(old('commission_type', $affiliate->commission_type ?? 'percent') === 'percent') selected @endif>Percent</option>
                                <option value="flat" @if(old('commission_type', $affiliate->commission_type ?? 'percent') === 'flat') selected @endif>Flat</option>
                            </select>
                            @error('commission_type')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Commission Value</label>
                            <input type="number" step="0.01" class="form-control @error('commission_value') is-invalid @enderror" name="commission_value" value="{{ old('commission_value', $affiliate->commission_value ?? $affiliate->commission_rate) }}" required>
                            @error('commission_value')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Balance</label>
                            <input type="number" step="0.01" class="form-control @error('balance') is-invalid @enderror" name="balance" value="{{ old('balance', $affiliate->balance) }}" required>
                            @error('balance')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-md-4">
                            <label class="form-label">Status</label>
                            <select class="form-control @error('status') is-invalid @enderror" name="status" required>
                                <option value="active" @if(old('status', $affiliate->status) === 'active') selected @endif>Active</option>
                                <option value="inactive" @if(old('status', $affiliate->status) === 'inactive') selected @endif>Inactive</option>
                            </select>
                            @error('status')
                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                            @enderror
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn btn-success">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
