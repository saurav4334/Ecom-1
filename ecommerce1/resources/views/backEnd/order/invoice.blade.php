@extends('backEnd.layouts.master')
@section('title','Order Invoice')

@section('content')
@php
    $barcodeValue = $invoiceSetting->barcode_value_source === 'order_id'
        ? (string) $order->id
        : ($invoiceSetting->barcode_value_source === 'transaction_id' ? (string) $order->id : (string) $order->invoice_id);

    $qrValue = $invoiceSetting->qr_value_source === 'invoice_id'
        ? (string) $order->invoice_id
        : ($invoiceSetting->qr_value_source === 'customer_phone'
            ? (string) optional($order->shipping)->phone
            : route('admin.order.invoice', ['invoice_id' => $order->invoice_id]));

    $subTotal = $order->orderdetails->sum(function ($row) {
        return ($row->sale_price ?? 0) * ($row->qty ?? 0);
    });
    $shipping = $order->shipping_charge ?? 0;
    $discount = $order->discount ?? 0;
    $finalTotal = $order->amount ?? 0;
    $advancePaid = \App\Models\Payment::where('order_id', $order->id)->sum('amount');
    $dueAmount = max(0, $finalTotal - $advancePaid);
@endphp

<style>
    .invoice-wrap {
        max-width: 920px;
        margin: 24px auto;
        background: #fff;
        border: 1px solid #e6ebf2;
        border-radius: 12px;
        overflow: hidden;
        color: {{ $invoiceSetting->text_color }};
    }
    .invoice-head {
        background: {{ $invoiceSetting->header_bg_color }};
        color: #fff;
        padding: 18px 24px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 10px;
        flex-wrap: wrap;
    }
    .invoice-body {
        padding: 20px 24px;
    }
    .grid-2 {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 16px;
    }
    .block {
        border: 1px solid #e6ebf2;
        border-radius: 8px;
        padding: 12px;
        background: #fbfdff;
    }
    .tbl thead th {
        background: {{ $invoiceSetting->accent_color }};
        color: #fff;
        border-color: {{ $invoiceSetting->accent_color }};
    }
    .totals {
        width: 330px;
        margin-left: auto;
    }
    .totals td {
        padding: 8px 12px;
    }
    .print-hide {
        display: inline-block;
    }
    @media print {
        header, footer, .left-side-menu, .navbar-custom, .print-hide {
            display: none !important;
        }
        .invoice-wrap {
            margin: 0;
            border: none;
            max-width: 100%;
        }
    }
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 d-flex justify-content-between align-items-center print-hide mb-2">
            <a href="/admin/order/all"><strong><i class="fe-arrow-left"></i> Back To Order</strong></a>
            <button onclick="window.print()" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Print</button>
        </div>
    </div>

    <div class="invoice-wrap">
        <div class="invoice-head">
            <div>
                <h4 class="mb-1">Invoice #{{ $order->invoice_id }}</h4>
                <small>{{ optional($order->created_at)->format('d M Y, h:i A') }}</small>
            </div>
            <div class="text-end">
                @if($invoiceSetting->show_logo)
                    <img src="{{ asset($generalsetting->white_logo) }}" alt="logo" style="max-height:58px;">
                @endif
                <div class="mt-2">
                    <span class="badge bg-light text-dark">{{ $order->status->name ?? 'Pending' }}</span>
                </div>
            </div>
        </div>

        <div class="invoice-body">
            <div class="grid-2 mb-3">
                @if($invoiceSetting->show_company_info)
                <div class="block">
                    <h6 class="mb-2">Invoice From</h6>
                    <div>{{ $generalsetting->name }}</div>
                    <div>{{ $contact->phone ?? '' }}</div>
                    <div>{{ $contact->email ?? '' }}</div>
                    @if($invoiceSetting->show_order_note && (!empty($order->order_note) || !empty($order->note)))
                        <div class="mt-2"><strong>Order Note:</strong> {{ $order->order_note ?? $order->note }}</div>
                    @endif
                </div>
                @endif

                @if($invoiceSetting->show_customer_info)
                <div class="block">
                    <h6 class="mb-2">Invoice To</h6>
                    <div>{{ $order->shipping->name ?? '' }}</div>
                    <div>{{ $order->shipping->phone ?? '' }}</div>
                    <div>{{ $order->shipping->address ?? '' }}</div>
                    <div>{{ $order->shipping->area ?? '' }}</div>
                </div>
                @endif
            </div>

            @if($invoiceSetting->show_payment_info)
            <div class="block mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <strong>Payment Method:</strong> {{ strtoupper(optional($order->payment)->payment_method ?? 'N/A') }}<br>
                        <strong>Gateway:</strong> {{ ucfirst($order->payment_gateway ?? 'N/A') }}
                    </div>
                    <div class="col-md-6 text-md-end">
                        <strong>Payment Status:</strong>
                        <select id="payment_status_{{ $order->id }}" class="form-control form-control-sm d-inline-block print-hide" style="width:auto;">
                            <option value="pending" {{ $order->payment_status == 'pending' ? 'selected' : '' }}>Pending</option>
                            <option value="paid" {{ $order->payment_status == 'paid' ? 'selected' : '' }}>Paid</option>
                            <option value="unpaid" {{ $order->payment_status == 'unpaid' ? 'selected' : '' }}>Unpaid</option>
                            <option value="failed" {{ $order->payment_status == 'failed' ? 'selected' : '' }}>Failed</option>
                        </select>
                        <button class="btn btn-success btn-sm print-hide" onclick="updatePaymentStatus({{ $order->id }})">Update</button>
                    </div>
                </div>
            </div>
            @endif

            @if($invoiceSetting->show_barcode || $invoiceSetting->show_qr)
            <div class="block mb-3 d-flex justify-content-between align-items-center">
                <div>
                    @if($invoiceSetting->show_barcode)
                        <svg id="invoice-barcode"></svg>
                    @endif
                </div>
                <div id="invoice-qr"></div>
            </div>
            @endif

            <div class="table-responsive">
                <table class="table table-bordered tbl mb-0">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order->orderdetails as $value)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>
                                <img src="{{ asset($value->image->image ?? 'public/no-image.png') }}" alt="product" style="width:40px;height:40px;object-fit:cover;border-radius:6px;">
                            </td>
                            <td>
                                {{ $value->product_name }}
                                @if($value->size || $value->color)
                                    <br>
                                    <small class="text-muted">
                                        @if($value->size) Size: {{ $value->size->name }} @endif
                                        @if($value->size && $value->color) | @endif
                                        @if($value->color) Color: {{ $value->color->name }} @endif
                                    </small>
                                @endif
                            </td>
                            <td>৳ {{ number_format($value->sale_price, 2) }}</td>
                            <td>{{ $value->qty }}</td>
                            <td>৳ {{ number_format($value->sale_price * $value->qty, 2) }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <table class="table table-bordered totals mt-3">
                <tr><td><strong>Sub-total</strong></td><td><strong>৳ {{ number_format($subTotal, 2) }}</strong></td></tr>
                <tr><td><strong>Shipping(+)</strong></td><td><strong>৳ {{ number_format($shipping, 2) }}</strong></td></tr>
                <tr><td><strong>Discount(-)</strong></td><td><strong>৳ {{ number_format($discount, 2) }}</strong></td></tr>
                <tr style="background: {{ $invoiceSetting->accent_color }}; color:#fff;">
                    <td><strong>Final Total</strong></td><td><strong>৳ {{ number_format($finalTotal, 2) }}</strong></td>
                </tr>
                @if($advancePaid > 0 && $advancePaid < $finalTotal)
                <tr><td><strong>Advance Paid</strong></td><td><strong>৳ {{ number_format($advancePaid, 2) }}</strong></td></tr>
                <tr><td><strong>Due Amount</strong></td><td><strong>৳ {{ number_format($dueAmount, 2) }}</strong></td></tr>
                @endif
            </table>

            @if($invoiceSetting->show_terms || !empty($invoiceSetting->custom_footer_text))
            <div class="text-center mt-4 pt-3" style="border-top:1px solid #e5e7eb;">
                @if($invoiceSetting->show_terms)
                    <h6 class="mb-1"><a href="{{ route('page',['slug'=>'terms-condition']) }}">Terms & Conditions</a></h6>
                    <p class="mb-1"><em>* {{ $invoiceSetting->terms_text ?: 'This is a computer generated invoice, does not require any signature.' }}</em></p>
                @endif
                @if(!empty($invoiceSetting->custom_footer_text))
                    <p class="mb-0">{{ $invoiceSetting->custom_footer_text }}</p>
                @endif
            </div>
            @endif
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.11.6/dist/JsBarcode.all.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<script>
function updatePaymentStatus(orderId) {
    let status = document.getElementById('payment_status_' + orderId).value;
    fetch('{{ route("admin.order.updatePaymentStatus") }}', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': '{{ csrf_token() }}',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ order_id: orderId, payment_status: status })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            toastr.success(data.message, 'Success');
        } else {
            toastr.error(data.message || 'Update failed', 'Error');
        }
    })
    .catch(() => toastr.error('Something went wrong!', 'Error'));
}

document.addEventListener('DOMContentLoaded', function () {
    @if($invoiceSetting->show_barcode)
    JsBarcode("#invoice-barcode", "{{ $barcodeValue }}", {
        format: "CODE128",
        lineColor: "{{ $invoiceSetting->accent_color }}",
        width: 1.6,
        height: 42,
        displayValue: true,
        fontSize: 12
    });
    @endif

    @if($invoiceSetting->show_qr)
    new QRCode(document.getElementById("invoice-qr"), {
        text: "{{ $qrValue }}",
        width: 88,
        height: 88
    });
    @endif
});
</script>
@endsection
