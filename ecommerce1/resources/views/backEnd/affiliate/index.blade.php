@extends('backEnd.layouts.master')
@section('title','Affiliate Manage')
@section('css')
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css" rel="stylesheet" type="text/css" />
@endsection

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Manage</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="mb-3">
                        <a href="{{ route('admin.affiliate.create') }}" class="btn btn-primary">Add Affiliate</a>
                    </div>
                    <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>User</th>
                                <th>Email</th>
                                <th>Referral Code</th>
                                <th>Commission</th>
                                <th>Balance</th>
                                <th>Total Earned</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($affiliates as $affiliate)
                                @php
                                    $earned = $affiliate->referrals
                                        ->whereIn('status', ['confirmed', 'paid'])
                                        ->sum('commission_amount');
                                @endphp
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    <td>{{ $affiliate->user->name ?? 'N/A' }}</td>
                                    <td>{{ $affiliate->user->email ?? 'N/A' }}</td>
                                    <td>{{ $affiliate->referral_code }}</td>
                                    <td>
                                        @if(($affiliate->commission_type ?? 'percent') === 'flat')
                                            {{ number_format($affiliate->commission_value ?? 0, 2) }} flat
                                        @else
                                            {{ number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2) }}%
                                        @endif
                                    </td>
                                    <td>{{ number_format($affiliate->balance, 2) }}</td>
                                    <td>{{ number_format($earned, 2) }}</td>
                                    <td>
                                        @if($affiliate->status === 'active')
                                            <span class="badge bg-soft-success text-success">Active</span>
                                        @else
                                            <span class="badge bg-soft-danger text-danger">Inactive</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('admin.affiliate.edit', $affiliate->id) }}" class="btn btn-xs btn-primary waves-effect waves-light">
                                            <i class="fe-edit-1"></i>
                                        </a>
                                        <a href="{{ route('admin.affiliate.report', $affiliate->id) }}" class="btn btn-xs btn-info waves-effect waves-light">
                                            <i class="fe-file-text"></i>
                                        </a>
                                        @if($affiliate->status === 'active')
                                            <form method="post" action="{{ route('admin.affiliate.ban', $affiliate->id) }}" class="d-inline">
                                                @csrf
                                                <button type="submit" class="btn btn-xs btn-warning waves-effect waves-light">
                                                    <i class="fe-slash"></i>
                                                </button>
                                            </form>
                                        @else
                                            <form method="post" action="{{ route('admin.affiliate.unban', $affiliate->id) }}" class="d-inline">
                                                @csrf
                                                <button type="submit" class="btn btn-xs btn-success waves-effect waves-light">
                                                    <i class="fe-check"></i>
                                                </button>
                                            </form>
                                        @endif
                                        <form method="post" action="{{ route('admin.affiliate.destroy', $affiliate->id) }}" class="d-inline" onsubmit="return confirm('Delete this affiliate?');">
                                            @csrf
                                            <button type="submit" class="btn btn-xs btn-danger waves-effect waves-light">
                                                <i class="fe-trash-2"></i>
                                            </button>
                                        </form>
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
@endsection

@section('script')
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="{{asset('/public/backEnd/')}}/assets/js/pages/datatables.init.js"></script>
@endsection
