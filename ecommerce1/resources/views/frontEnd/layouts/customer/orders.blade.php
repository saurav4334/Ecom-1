@extends('frontEnd.layouts.master')
@section('title','Customer Account')
@section('content')

<section class="customer-section">
    <div class="container">
        <div class="row">

            <div class="col-sm-3">
                <div class="customer-sidebar">
                    @include('frontEnd.layouts.customer.sidebar')
                </div>
            </div>

            <div class="col-sm-9">

                <div class="customer-content">
                    <h5 class="account-title">My Order</h5>

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Date</th>
                                    <th>Total Amount</th>
                                    <th>Advance Paid</th>
                                    <th>Due Amount</th>
                                    <th>Status</th>
                                    <th>Download</th> {{-- � নত�ন কলাম --}}
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>

                                @foreach($orders as $value)

                                @php
                                    // ------------------------------
                                    // ADVANCE PAYMENT CALCULATION
                                    // ------------------------------

                                    $advancePaid = 0;

                                    if ($value->payment_gateway) {
                                        $advancePaid = \App\Models\Payment::where('order_id', $value->id)
                                                        ->where('payment_method', $value->payment_gateway)
                                                        ->sum('amount');
                                    }

                                    $dueAmount = $value->amount - $advancePaid;

                                    // � �ই অর্ডারের ডিজিটাল ডাউনলোড
                                    $digitalDownloads = \App\Models\DigitalDownload::where('order_id', $value->id)->get();

                                @endphp

                                <tr>
                                    <td>{{ $loop->iteration }}</td>

                                    <td>{{ $value->created_at->format('d-m-y') }}</td>

                                    <td>৳{{ number_format($value->amount, 2) }}</td>

                                    <td>
                                        @if($advancePaid > 0)
                                            <span class="text-success">
                                                <strong>৳{{ number_format($advancePaid, 2) }}</strong>
                                            </span>
                                        @else
                                            <span class="text-muted">৳0.00</span>
                                        @endif
                                    </td>

                                    <td>
                                        @if($dueAmount > 0)
                                            <span class="text-danger">
                                                <strong>৳{{ number_format($dueAmount, 2) }}</strong>
                                            </span>
                                        @else
                                            <span class="text-muted">৳0.00</span>
                                        @endif
                                    </td>

                                    <td>{{ $value->status ? $value->status->name : '' }}</td>

                                    {{-- â­ DIGITAL DOWNLOAD COLUMN --}}
                                    <td>
                                        @if($digitalDownloads->count() > 0)

                                            {{-- ⚡ যদি order paid হয় --}}
                                            @if($value->payment_status == 'paid')

                                                @foreach($digitalDownloads as $dl)
                                                    <a href="{{ route('digital.download', $dl->token) }}"
                                                       class="btn btn-sm btn-success" target="_blank">
                                                        Download
                                                    </a><br>
                                                @endforeach

                                            @else
                                                {{-- ⚠ Paid না হলে --}}
                                                <span class="text-danger"><strong>Unpaid</strong></span>
                                            @endif

                                        @endif
                                    </td>

                                    <td>
                                        <a href="{{ route('customer.invoice',['id'=>$value->id]) }}" class="invoice_btn">
                                            <i class="fa-solid fa-eye"></i>
                                        </a>

                                        @if($value->admin_note)
                                            <a href="{{ route('customer.order_note',['id'=>$value->id]) }}" class="invoice_btn bg-primary">
                                                <i class="fa-solid fa-pencil"></i>
                                            </a>
                                        @endif
                                    </td>

                                </tr>

                                @endforeach

                            </tbody>

                        </table>
                    </div>

                </div>

            </div>

        </div>
    </div>
</section>

@endsection

