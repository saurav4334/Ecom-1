@extends('backEnd.layouts.master')
@section('title','Affiliate Form Settings')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Form Settings</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <form action="{{ route('admin.affiliate.form_settings.update') }}" method="POST">
                        @csrf
                        @php $fields = $setting->fields ?? []; @endphp

                        @foreach($fields as $key => $field)
                            <div class="border rounded p-3 mb-3">
                                <div class="d-flex justify-content-between align-items-center">
                                    <strong>{{ ucfirst(str_replace('_', ' ', $key)) }}</strong>
                                    <div>
                                        <label class="me-2">
                                            <input type="checkbox" name="fields[{{ $key }}][enabled]" value="1" {{ !empty($field['enabled']) ? 'checked' : '' }}>
                                            Enabled
                                        </label>
                                        <label>
                                            <input type="checkbox" name="fields[{{ $key }}][required]" value="1" {{ !empty($field['required']) ? 'checked' : '' }}>
                                            Required
                                        </label>
                                    </div>
                                </div>
                                <div class="mt-2">
                                    <label class="form-label">Label</label>
                                    <input type="text" class="form-control" name="fields[{{ $key }}][label]" value="{{ $field['label'] ?? '' }}">
                                </div>
                            </div>
                        @endforeach

                        <div class="mb-3">
                            <label class="form-label">Form Status</label>
                            <select class="form-control" name="status">
                                <option value="active" @if(($setting->status ?? 'active') === 'active') selected @endif>Active</option>
                                <option value="inactive" @if(($setting->status ?? 'active') === 'inactive') selected @endif>Inactive</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-success">Save Settings</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
