@extends('backEnd.layouts.master')
@section('title','Order Details')

@section('css')
<style>
    .order-shell {
        background: #f5f7fb;
        border-radius: 12px;
        padding: 14px;
    }
    .order-head {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 12px;
        flex-wrap: wrap;
        margin-bottom: 12px;
    }
    .order-head .crumb {
        font-size: 12px;
        text-transform: uppercase;
        color: #6b7280;
    }
    .order-head .title {
        margin: 0;
        font-size: 28px;
        font-weight: 700;
        color: #1f2937;
    }
    .detail-card, .action-card {
        background: #fff;
        border: 1px solid #e5e7eb;
        border-radius: 12px;
        box-shadow: 0 2px 10px rgba(15, 23, 42, 0.04);
    }
    .detail-card {
        padding: 14px;
    }
    .action-card {
        padding: 12px;
    }
    .invoice-banner {
        border: 1px solid #e9eef5;
        border-radius: 10px;
        padding: 12px;
        margin-bottom: 12px;
        background: #fbfdff;
    }
    .invoice-meta {
        display: grid;
        grid-template-columns: repeat(5, minmax(0,1fr));
        gap: 8px;
        margin-top: 10px;
    }
    .meta-box {
        border: 1px solid #e8edf3;
        border-radius: 8px;
        padding: 8px;
        background: #fff;
    }
    .meta-box .label {
        font-size: 11px;
        color: #6b7280;
        text-transform: uppercase;
    }
    .meta-box .val {
        font-size: 14px;
        color: #1f2937;
        font-weight: 600;
    }
    .info-grid {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 10px;
        margin: 12px 0;
    }
    .info-box {
        border: 1px solid #e8edf3;
        border-radius: 8px;
        padding: 10px;
        background: #fbfdff;
    }
    .info-title {
        font-size: 14px;
        font-weight: 700;
        color: #1f2937;
        margin-bottom: 6px;
    }
    .order-table thead th {
        background: #edf2f9;
        color: #334155;
        font-size: 13px;
    }
    .order-table td, .order-table th {
        vertical-align: middle;
    }
    .status-badge {
        display: inline-block;
        border-radius: 999px;
        padding: 2px 10px;
        font-size: 12px;
        font-weight: 700;
        background: #fff3cd;
        color: #8a6d3b;
        border: 1px solid #f5df9e;
    }
    .summary-box {
        max-width: 340px;
        margin-left: auto;
        border: 1px solid #e8edf3;
        border-radius: 10px;
        padding: 10px;
        background: #fbfdff;
    }
    .summary-row {
        display: flex;
        justify-content: space-between;
        margin-bottom: 6px;
        font-size: 14px;
    }
    .summary-row.total {
        font-weight: 700;
        border-top: 1px solid #e8edf3;
        padding-top: 8px;
        margin-top: 8px;
    }
    .panel-title {
        font-size: 28px;
        font-weight: 700;
        margin-bottom: 10px;
        color: #1f2937;
    }
    .mini-panel {
        border: 1px solid #e8edf3;
        border-radius: 8px;
        padding: 10px;
        background: #fff;
        margin-bottom: 8px;
    }
    .payment-box {
        border: 1px solid #e8edf3;
        border-radius: 8px;
        padding: 10px;
        background: #fbfdff;
    }
    @media (max-width: 991px) {
        .invoice-meta {
            grid-template-columns: 1fr 1fr;
        }
        .info-grid {
            grid-template-columns: 1fr;
        }
    }
</style>
<link href="{{asset('backEnd')}}/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('content')
@php
    $paymentInfo = DB::table('orders')
        ->select('payment_gateway', 'payment_status')
        ->where('id', $data->id)
        ->first();

    $subTotal = $data->orderdetails->sum(function($row){
        return ($row->sale_price ?? 0) * ($row->qty ?? 0);
    });
    $shippingCharge = $data->shipping_charge ?? 0;
    $discount = $data->discount ?? 0;
    $grandTotal = ($data->amount ?? 0);
@endphp

<div class="container-fluid">
    <div class="order-shell">
        <div class="order-head">
            <div>
                <div class="crumb">Pages > Orders</div>
                <h4 class="title">Order Details</h4>
            </div>
            <div>
                <a href="{{ route('admin.order.edit',['invoice_id'=>$data->invoice_id]) }}" class="btn btn-warning"><i class="fe-edit"></i> Edit Order</a>
                <a href="{{ route('admin.order.invoice',['invoice_id'=>$data->invoice_id]) }}" class="btn btn-primary"><i class="fe-eye"></i> View Invoice</a>
            </div>
        </div>

        <div class="row g-3">
            <div class="col-lg-8">
                <div class="detail-card">
                    <div class="invoice-banner">
                        <div class="d-flex justify-content-between align-items-center flex-wrap gap-2">
                            <div>
                                <h5 class="mb-1">Invoice #{{ $data->invoice_id }}</h5>
                                <small class="text-muted">Created: {{ optional($data->created_at)->format('d M, Y h:i A') }}</small>
                            </div>
                            <span class="status-badge">{{ $data->status->name ?? 'Pending' }}</span>
                        </div>
                        <div class="invoice-meta">
                            <div class="meta-box">
                                <div class="label">Order Number</div>
                                <div class="val">#{{ $data->invoice_id }}</div>
                            </div>
                            <div class="meta-box">
                                <div class="label">Transaction ID</div>
                                <div class="val">#{{ $data->id }}</div>
                            </div>
                            <div class="meta-box">
                                <div class="label">Order Date</div>
                                <div class="val">{{ optional($data->created_at)->format('d M, Y h:i A') }}</div>
                            </div>
                            <div class="meta-box">
                                <div class="label">Payment Method</div>
                                <div class="val">{{ strtoupper($paymentInfo->payment_gateway ?? 'COD') }}</div>
                            </div>
                            <div class="meta-box">
                                <div class="label">Payment Status</div>
                                <div class="val">{{ ucfirst($paymentInfo->payment_status ?? 'unpaid') }}</div>
                            </div>
                        </div>
                    </div>

                    <div class="info-grid">
                        <div class="info-box">
                            <div class="info-title">Shipping Info</div>
                            <div>{{ $data->shipping->name ?? '' }}</div>
                            <div>{{ $data->shipping->phone ?? '' }}</div>
                            <div>{{ $data->shipping->address ?? '' }}</div>
                            <div>{{ $data->shipping->area ?? '' }}</div>
                        </div>
                        <div class="info-box">
                            <div class="info-title">User Account Info</div>
                            <div>{{ $data->customer->name ?? 'Guest' }}</div>
                            <div>{{ $data->customer->phone ?? '-' }}</div>
                            <div>{{ $data->customer->email ?? '-' }}</div>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered order-table mb-2">
                            <thead>
                                <tr>
                                    <th style="width:50px;">SL</th>
                                    <th>Item</th>
                                    <th>Variant</th>
                                    <th style="width:90px;">Qty</th>
                                    <th style="width:120px;">Unit Cost</th>
                                    <th style="width:120px;">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data->orderdetails as $key => $product)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>
                                        <div class="d-flex align-items-center gap-2">
                                            <img src="{{ asset($product->image->image ?? 'public/no-image.png') }}" height="42" width="42" alt="img">
                                            <div>
                                                <div><strong>{{ $product->product_name }}</strong></div>
                                                <small class="text-muted">SKU: {{ $product->product_id }}</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        Color: {{ $product->color->name ?? 'N/A' }}<br>
                                        Size: {{ $product->size->name ?? 'N/A' }}
                                    </td>
                                    <td>{{ $product->qty }}</td>
                                    <td>৳ {{ number_format($product->sale_price ?? 0, 2) }}</td>
                                    <td>৳ {{ number_format(($product->sale_price ?? 0) * ($product->qty ?? 0), 2) }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>

                    <div class="summary-box">
                        <div class="summary-row"><span>Sub-total:</span><strong>৳ {{ number_format($subTotal, 2) }}</strong></div>
                        <div class="summary-row"><span>Delivery Charge:</span><strong>৳ {{ number_format($shippingCharge, 2) }}</strong></div>
                        <div class="summary-row"><span>Discount:</span><strong>- ৳ {{ number_format($discount, 2) }}</strong></div>
                        <div class="summary-row total"><span>Total Order Amount:</span><span>৳ {{ number_format($grandTotal, 2) }}</span></div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4">
                <div class="action-card">
                    <div class="panel-title">Invoice Actions</div>
                    <form action="{{route('admin.order_change')}}" method="POST">
                        @csrf
                        <input type="hidden" name="id" value="{{ $data->id }}">

                        <div class="mini-panel">
                            <h6 class="mb-2">Order & Shipment</h6>
                            <div class="mb-2">
                                <label class="form-label">Order Status</label>
                                <select class="form-control" name="status" required>
                                    <option value="">Select..</option>
                                    @foreach($orderstatus as $value)
                                        <option value="{{ $value->id }}" @if($data->order_status==$value->id) selected @endif>{{ $value->name }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="mb-2">
                                <label class="form-label">Delivery Area</label>
                                <select id="area" class="form-control" name="area" required>
                                    @foreach($shippingcharge as $value)
                                        <option @if(($data->shipping?$data->shipping->area:'') == $value->name) selected @endif value="{{ $value->id }}">
                                            {{ $value->name }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="mini-panel">
                            <h6 class="mb-2">Customer Info</h6>
                            <div class="mb-2">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" value="{{ $data->shipping?$data->shipping->name:'' }}">
                            </div>
                            <div class="mb-2">
                                <label class="form-label">Phone</label>
                                <input type="text" class="form-control" name="phone" value="{{ $data->shipping?$data->shipping->phone:'' }}">
                            </div>
                            <div>
                                <label class="form-label">Address</label>
                                <textarea name="address" class="form-control" rows="2">{{ $data->shipping?$data->shipping->address:'' }}</textarea>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary w-100"><i class="fe-save"></i> Save Changes</button>
                    </form>

                    <div class="payment-box mt-2">
                        <h6 class="mb-2">Payment</h6>
                        <div class="mb-2"><strong>Gateway:</strong> {{ strtoupper($paymentInfo->payment_gateway ?? 'N/A') }}</div>
                        <div class="d-flex align-items-center gap-2">
                            <select id="payment_status_{{ $data->id }}" class="form-control form-control-sm">
                                <option value="pending" {{ ($paymentInfo->payment_status ?? '') == 'pending' ? 'selected' : '' }}>Pending</option>
                                <option value="paid" {{ ($paymentInfo->payment_status ?? '') == 'paid' ? 'selected' : '' }}>Paid</option>
                                <option value="unpaid" {{ ($paymentInfo->payment_status ?? '') == 'unpaid' ? 'selected' : '' }}>Unpaid</option>
                                <option value="failed" {{ ($paymentInfo->payment_status ?? '') == 'failed' ? 'selected' : '' }}>Failed</option>
                            </select>
                            <button type="button" class="btn btn-success btn-sm" onclick="updatePaymentStatus({{ $data->id }})">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
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
    .catch(() => toastr.error('Something went wrong', 'Error'));
}
</script>
@endsection


