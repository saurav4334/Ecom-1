@extends('backEnd.layouts.master')
@section('title','Invoice Design Settings')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Invoice Design & Layout</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <form method="POST" action="{{ route('settings.invoice_design.update') }}">
                        @csrf
                        <div class="row g-3">
                            <div class="col-md-4">
                                <label class="form-label">Layout</label>
                                <select name="layout" class="form-control">
                                    <option value="classic" {{ $setting->layout === 'classic' ? 'selected' : '' }}>Classic</option>
                                    <option value="modern" {{ $setting->layout === 'modern' ? 'selected' : '' }}>Modern</option>
                                    <option value="minimal" {{ $setting->layout === 'minimal' ? 'selected' : '' }}>Minimal</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Header Color</label>
                                <input type="color" name="header_bg_color" class="form-control form-control-color" value="{{ $setting->header_bg_color }}">
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Accent Color</label>
                                <input type="color" name="accent_color" class="form-control form-control-color" value="{{ $setting->accent_color }}">
                            </div>
                            <div class="col-md-4">
                                <label class="form-label">Text Color</label>
                                <input type="color" name="text_color" class="form-control form-control-color" value="{{ $setting->text_color }}">
                            </div>

                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_logo" name="show_logo" {{ $setting->show_logo ? 'checked' : '' }}>
                                <label for="show_logo" class="form-check-label">Show Logo</label>
                            </div>
                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_company_info" name="show_company_info" {{ $setting->show_company_info ? 'checked' : '' }}>
                                <label for="show_company_info" class="form-check-label">Show Company Info</label>
                            </div>
                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_customer_info" name="show_customer_info" {{ $setting->show_customer_info ? 'checked' : '' }}>
                                <label for="show_customer_info" class="form-check-label">Show Customer Info</label>
                            </div>
                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_payment_info" name="show_payment_info" {{ $setting->show_payment_info ? 'checked' : '' }}>
                                <label for="show_payment_info" class="form-check-label">Show Payment Info</label>
                            </div>
                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_order_note" name="show_order_note" {{ $setting->show_order_note ? 'checked' : '' }}>
                                <label for="show_order_note" class="form-check-label">Show Order Note</label>
                            </div>
                            <div class="col-md-4 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_terms" name="show_terms" {{ $setting->show_terms ? 'checked' : '' }}>
                                <label for="show_terms" class="form-check-label">Show Terms</label>
                            </div>

                            <div class="col-md-6 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_barcode" name="show_barcode" {{ $setting->show_barcode ? 'checked' : '' }}>
                                <label for="show_barcode" class="form-check-label">Enable Barcode (Optional)</label>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Barcode Value Source</label>
                                <select name="barcode_value_source" class="form-control">
                                    <option value="invoice_id" {{ $setting->barcode_value_source === 'invoice_id' ? 'selected' : '' }}>Invoice ID</option>
                                    <option value="order_id" {{ $setting->barcode_value_source === 'order_id' ? 'selected' : '' }}>Order ID</option>
                                    <option value="transaction_id" {{ $setting->barcode_value_source === 'transaction_id' ? 'selected' : '' }}>Transaction ID</option>
                                </select>
                            </div>

                            <div class="col-md-6 form-check mt-4">
                                <input type="checkbox" class="form-check-input" id="show_qr" name="show_qr" {{ $setting->show_qr ? 'checked' : '' }}>
                                <label for="show_qr" class="form-check-label">Enable QR Code (Optional)</label>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">QR Value Source</label>
                                <select name="qr_value_source" class="form-control">
                                    <option value="invoice_url" {{ $setting->qr_value_source === 'invoice_url' ? 'selected' : '' }}>Invoice URL</option>
                                    <option value="invoice_id" {{ $setting->qr_value_source === 'invoice_id' ? 'selected' : '' }}>Invoice ID</option>
                                    <option value="customer_phone" {{ $setting->qr_value_source === 'customer_phone' ? 'selected' : '' }}>Customer Phone</option>
                                </select>
                            </div>

                            <div class="col-12">
                                <label class="form-label">Terms Text</label>
                                <textarea name="terms_text" rows="3" class="form-control">{{ $setting->terms_text }}</textarea>
                            </div>
                            <div class="col-12">
                                <label class="form-label">Custom Footer Text</label>
                                <textarea name="custom_footer_text" rows="2" class="form-control">{{ $setting->custom_footer_text }}</textarea>
                            </div>
                            <div class="col-12 text-end">
                                <button class="btn btn-primary">Save Invoice Settings</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
