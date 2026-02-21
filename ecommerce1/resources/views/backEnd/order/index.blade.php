@extends('backEnd.layouts.master')
@section('title',$order_status->name.' Order')
@section('content')
<style>
    .order-page-shell {
        background: #f5f7fb;
        border-radius: 12px;
        padding: 14px;
    }
    .order-topbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 12px;
        flex-wrap: wrap;
        margin-bottom: 14px;
    }
    .order-crumb {
        font-size: 12px;
        color: #6e7a8a;
        text-transform: uppercase;
        letter-spacing: .3px;
    }
    .order-title-main {
        margin: 0;
        font-size: 24px;
        font-weight: 700;
        color: #1f2d3d;
    }
    .top-search {
        width: 360px;
        max-width: 100%;
    }
    .top-search .input-group-text {
        background: #2f86eb;
        color: #fff;
        border: 1px solid #2f86eb;
    }
    .status-chip-wrap {
        display: flex;
        gap: 8px;
        flex-wrap: wrap;
        margin-bottom: 12px;
        background: #fff;
        border: 1px solid #e3e8ef;
        border-radius: 10px;
        padding: 10px;
    }
    .status-chip {
        border: 1px solid #dce3ec;
        border-radius: 6px;
        padding: 6px 11px;
        text-decoration: none;
        color: #243447;
        font-weight: 600;
        font-size: 13px;
        background: #f9fbff;
    }
    .status-chip.active {
        background: #eaf5ea;
        border-color: #89c689;
        color: #2f7a2f;
    }
    .status-chip .count {
        margin-left: 6px;
        opacity: 0.85;
    }
    .advanced-filter-toggle {
        width: 100%;
        border: 1px solid #e3e8ef;
        background: #fff;
        border-radius: 10px;
        padding: 12px 14px;
        color: #334155;
        font-weight: 600;
        text-align: left;
    }
    .advanced-filter-toggle i:last-child {
        float: right;
        margin-top: 2px;
    }
    .order-filter-card {
        border: 1px solid #e8edf3;
        border-radius: 12px;
        padding: 12px;
        background: #f8fafc;
    }
    .order-table td, .order-table th {
        vertical-align: middle;
    }
    .order-table thead th {
        background: #edf2f9;
        color: #2d3a4b;
        font-weight: 700;
    }
    .order-meta {
        line-height: 1.4;
        font-size: 13px;
    }
    .order-action a, .order-action button {
        border: none;
        background: #f1f5f9;
        border-radius: 6px;
        width: 28px;
        height: 28px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        margin-right: 4px;
    }
    .order-action button.delete-confirm {
        color: #dc3545;
    }
    .order-block {
        border: 1px solid #e3e8ef;
        border-radius: 12px;
        background: #fff;
        padding: 14px;
        margin-top: 10px;
    }
    .order-block-head {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 10px;
        flex-wrap: wrap;
        margin-bottom: 10px;
    }
    .order-block-title {
        font-size: 26px;
        font-weight: 700;
        color: #1f2d3d;
        margin: 0;
    }
    .order-toolbar .btn {
        margin-bottom: 6px;
    }
</style>
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="{{route('admin.order.create')}}" class="btn btn-danger rounded-pill"><i class="fe-shopping-cart"></i> POS Create</a>
                </div>
                <h4 class="page-title">{{$order_status->name}} Order ({{$order_status->orders_count}})</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 
    <div class="order-page-shell">
        <div class="order-topbar">
            <div>
                <div class="order-crumb">Pages > Orders</div>
                <h4 class="order-title-main">{{ $order_status->name }} Orders</h4>
            </div>
            <form class="top-search" method="GET" action="{{ url()->current() }}">
                <div class="input-group">
                    <input class="form-control" type="text" name="keyword" placeholder="Search by order number..." value="{{ request('keyword') }}">
                    <button class="input-group-text"><i class="fe-search"></i></button>
                </div>
            </form>
        </div>

        <div class="status-chip-wrap">
            <a href="{{ route('admin.orders', 'all') }}" class="status-chip {{ request()->segment(count(request()->segments())) === 'all' ? 'active' : '' }}">
                All <span class="count">{{ $totalOrders }}</span>
            </a>
            @foreach($statusFilters as $status)
                <a href="{{ route('admin.orders', $status->slug) }}" class="status-chip {{ $order_status->name === $status->name ? 'active' : '' }}">
                    {{ $status->name }} <span class="count">{{ $status->orders_count }}</span>
                </a>
            @endforeach
        </div>

        <button class="advanced-filter-toggle mb-2" type="button" data-bs-toggle="collapse" data-bs-target="#advancedFilters">
            <i class="fe-filter"></i> Advanced Filters for Orders <i class="fe-chevron-down"></i>
        </button>

        <div id="advancedFilters" class="collapse show">
            <form class="order-filter-card mb-2" method="GET" action="{{ url()->current() }}">
                <div class="row g-2">
                    <div class="col-md-3">
                        <select name="user_id" class="form-control">
                            <option value="">All Assignees</option>
                            @foreach($users as $user)
                                <option value="{{ $user->id }}" {{ request('user_id') == $user->id ? 'selected' : '' }}>
                                    {{ $user->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="payment_status" class="form-control">
                            <option value="">All Payment Status</option>
                            <option value="pending" {{ request('payment_status') === 'pending' ? 'selected' : '' }}>Pending</option>
                            <option value="paid" {{ request('payment_status') === 'paid' ? 'selected' : '' }}>Paid</option>
                            <option value="partial" {{ request('payment_status') === 'partial' ? 'selected' : '' }}>Partial</option>
                            <option value="failed" {{ request('payment_status') === 'failed' ? 'selected' : '' }}>Failed</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <input class="form-control" type="date" name="date_from" value="{{ request('date_from') }}">
                    </div>
                    <div class="col-md-2">
                        <input class="form-control" type="date" name="date_to" value="{{ request('date_to') }}">
                    </div>
                    <div class="col-md-2 d-flex gap-2">
                        <button class="btn btn-info w-100">Apply</button>
                        <a href="{{ url()->current() }}" class="btn btn-outline-secondary w-100">Reset</a>
                    </div>
                </div>
            </form>
        </div>

        <div class="order-block">
            <div class="order-block-head">
                <h5 class="order-block-title">{{ $order_status->name }} Orders</h5>
                <a href="{{route('admin.order.create')}}" class="btn btn-warning rounded-pill"><i class="fe-plus"></i> Create Order</a>
            </div>
            <div class="order-toolbar d-flex flex-wrap gap-2 mb-2">
                <a data-bs-toggle="modal" data-bs-target="#changeStatus" class="btn btn-info"><i class="fe-refresh-cw"></i> Change Status</a>
                <a href="{{route('admin.order.order_print')}}" class="btn btn-primary multi_order_print"><i class="fe-printer"></i> Print Orders</a>
                <a data-bs-toggle="modal" data-bs-target="#asignUser" class="btn btn-warning"><i class="fe-user-check"></i> Assign Delivery Channel</a>
                @if($steadfast)
                    <a href="{{route('admin.bulk_courier', 'steadfast')}}?status=5" class="btn btn-secondary multi_order_courier"><i class="fe-truck"></i> Courier Status</a>
                @endif
                <a href="{{route('admin.order.bulk_destroy')}}" class="btn btn-danger order_delete"><i class="fe-trash-2"></i> Bulk Delete</a>
            </div>
                <div class="table-responsive ">
                <table id="datatable-buttons" class="table table-striped table-hover w-100 order-table">
                    <thead>
                        <tr>
                            <th style="width:2%">
                                <div class="form-check">
                                    <label class="form-check-label"><input type="checkbox" class="form-check-input checkall" value=""></label>
                                </div>
                            </th>
                            <th style="width:2%">SL</th>
                            <th style="width:8%">Action</th>
                            <th style="width:8%">Invoice</th>
                            <th style="width:10%">Date</th>
                            <th style="width:10%">Name</th>
                            <th style="width:10%">Type</th>
							<th style="width:10%">Order Note</th>
<th style="width:10%">Admin Note</th>

                            <th style="width:10%">Courier Rate</th>
                            <th style="width:10%">Amount</th>
                            <th style="width:10%">Status</th>
                             <th>Track</th>
							  <th>Fraud Check</th>
                        </tr>
                    </thead>
                
                
                    <tbody>
                        @foreach($show_data as $key=>$value)
                        <tr>
                            <td><input type="checkbox" class="checkbox" value="{{$value->id}}"></td>
                            <td>{{ $show_data->firstItem() + $key }}</td>
                            <td>
                                <div class="button-list custom-btn-list order-action">   
                                    <a href="{{route('admin.order.invoice',['invoice_id'=>$value->invoice_id])}}" title="Invoice"><i class="fe-eye"></i></a>
                                    <a href="{{route('admin.order.process',['invoice_id'=>$value->invoice_id])}}" title="Process"><i class="fe-settings"></i></a>
                                    <a href="{{route('admin.order.edit',['invoice_id'=>$value->invoice_id])}}" title="Edit"><i class="fe-edit"></i></a>
                                    <form method="post" action="{{route('admin.order.destroy')}}" class="d-inline">        
                                        @csrf
                                    <input type="hidden" value="{{$value->id}}" name="id">
                                    <button type="submit" title="Delete" class="delete-confirm"><i class="fe-trash-2"></i></button>

                                    
                                    </form>
                                </div>
                            </td>
                            <td>{{$value->invoice_id}}</td>
                            <td class="order-meta">{{date('d-m-Y', strtotime($value->updated_at))}}<br> {{date('h:i:s a', strtotime($value->updated_at))}}</td>
                            <td class="order-meta"><strong>{{$value->shipping?$value->shipping->name:''}}</strong><p>{{$value->shipping?$value->shipping->address:''}}</p>{{$value->shipping?$value->shipping->phone:''}}</td>
                            <td>  @php
        // অর্ডারে থাকা সব প্রোডাক্ট সংগ্রহ করছি
        $items = $value->orderDetails;

        $types = [];

        foreach ($items as $item) {
            if ($item->product && $item->product->is_digital == 1) {
                $types[] = 'Digital';
            } else {
                $types[] = 'Physical';
            }
        }

        $types = array_unique($types);

        if (count($types) === 1) {
            echo $types[0]; // শুধু Digital বা শুধু Physical
        } else {
            echo "Mixed"; // দুইটাই থাকলে
        }
    @endphp</td>
							{{-- ⭐ Order Note (Client Note) --}}
<td>
    @php
        $orderNote = $value->order_note ?? $value->note ?? null;
    @endphp

    <button
        type="button"
        class="btn btn-sm btn-outline-info note-modal-btn"
        data-type="order"
        data-id="{{ $value->id }}"
        data-note="{{ $orderNote ?? '' }}"
    >
        {{ $orderNote ? 'View' : 'Add' }}
    </button>
</td>


<td>
    <button
        type="button"
        class="btn btn-sm btn-outline-warning note-modal-btn"
        data-type="admin"
        data-id="{{ $value->id }}"
        data-note="{{ $value->admin_note ?? '' }}"
    >
        {{ $value->admin_note ? 'View' : 'Add' }}
    </button>
</td>

							
                                                <td>
                                        Pathao: Success {{$value->pathao_success ?? 0}}, Cancel {{$value->pathao_cancel ?? 0}}, Rate {{$value->pathao_rate ?? 0}}% <br>
                                        RedX: Success {{$value->redx_success ?? 0}}, Cancel {{$value->redx_cancel ?? 0}}, Rate {{$value->redx_rate ?? 0}}% <br>
                                        Steadfast: Success {{$value->steadfast_success ?? 0}}, Cancel {{$value->steadfast_cancel ?? 0}}, Rate {{$value->steadfast_rate ?? 0}}%
                                    </td>
							
							<td>
    @php
        // এই অর্ডারের পেমেন্ট বের করছি
        $payment = \App\Models\Payment::where('order_id', $value->id)->first();

        $paid = $payment ? floatval($payment->amount) : 0;
        $total = floatval($value->amount);

        // ডিফল্ট ধরি: কোনো advance নাই / ফুল পেমেন্ট
        $showAmount = $total;

        // যদি payment amount > 0 এবং total থেকে কম হয় → মানে advance দিয়েছে
        if ($paid > 0 && $paid < $total) {
            $showAmount = $total - $paid;   // 👉 শুধু বাকি টাকা দেখাব
        }
    @endphp

    ৳{{ number_format($showAmount, 2) }}
</td>

                            <td><span class="badge bg-primary">{{$value->status?$value->status->name:''}}</span></td>
                            
                            
                            
                            
                            
          <td>
    @if(!empty($value->consignment_id))
<a href="https://steadfast.com.bd/t/{{ $value->consignment_id }}"
   target="_blank"
   rel="noopener noreferrer"
   class="btn btn-sm btn-primary">
  ট্র্যাকিং
</a>

    @else
        <span class="text-muted">কোন রেকর্ড নেই</span>
    @endif
</td>
                            
                            
                            
                            
                            
							                               <td>
        <a href="javascript:void(0);" 
   class="btn btn-sm fraud-check"
   data-mobile="{{ $value->shipping ? $value->shipping->phone : '' }}"
   style="background:#fb8709; color:#fff; padding:5px 12px; border-radius:6px; font-size:13px;">
   চেকিং
</a>

                                    </td>
                            
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                </div>
                @if($show_data->count() === 0)
                    <div class="text-center py-4 text-muted">
                        No orders found for current filter.
                    </div>
                @endif
                <div class="custom-paginate">
                    {{$show_data->appends(request()->query())->links('pagination::bootstrap-4')}}
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Assign User End -->
<div class="modal fade" id="asignUser" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Assign User</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="{{route('admin.order.assign')}}" id="order_assign">
      <div class="modal-body">
        <div class="form-group">
            <select name="user_id" id="user_id" class="form-control">
                <option value="">Select..</option>
                @foreach($users as $key=>$value)
                <option value="{{$value->id}}">{{$value->name}}</option>
                @endforeach
            </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- Assign User End-->

<!-- Assign User End -->
<div class="modal fade" id="changeStatus" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Assign User</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="{{route('admin.order.status')}}" id="order_status_form">
      <div class="modal-body">
        <div class="form-group">
            <select name="order_status" id="order_status" class="form-control">
                <option value="">Select..</option>
                @foreach($orderstatus as $key=>$value)
                <option value="{{$value->id}}">{{$value->name}}</option>
                @endforeach
            </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- Assign User End-->
<!-- pathao coureir start -->
<div class="modal fade" id="pathao" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Pathao Courier</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="{{route('admin.order.pathao')}}" id="order_sendto_pathao">

      <div class="modal-body">
        <div class="form-group">
            <label for="pathaostore" class="form-label">Store</label>
           <select name="pathaostore" id="pathaostore" class="pathaostore form-control" >
             <option value="">Select Store...</option>
             @if(isset($pathaostore['data']['data']))
             @foreach($pathaostore['data']['data'] as $key=>$store)
             <option value="{{$store['store_id']}}">{{$store['store_name']}}</option>
             @endforeach
             @else
             @endif
           </select>
            @if ($errors->has('pathaostore'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('pathaostore') }}</strong>
              </span>
              @endif
        </div>
        <!-- form group end -->
        <div class="form-group mt-3">
          <label for="pathaocity" class="form-label">City</label>
           <select name="pathaocity" id="pathaocity" class="chosen-select pathaocity form-control" style="width:100%" >
             <option value="">Select City...</option>
             @if(isset($pathaocities['data']['data']))
             @foreach($pathaocities['data']['data'] as $key=>$city)
             <option value="{{$city['city_id']}}">{{$city['city_name']}}</option>
             @endforeach
             @else
             @endif
           </select>
            @if ($errors->has('pathaocity'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('pathaocity') }}</strong>
              </span>
              @endif
        </div>
        <!-- form group end -->
        <div class="form-group mt-3">
          <label for="" class="form-label">Zone</label>
             <select name="pathaozone" id="pathaozone" class="pathaozone chosen-select form-control  {{ $errors->has('pathaozone') ? ' is-invalid' : '' }}" value="{{ old('pathaozone') }}"  style="width:100%">
            </select>
             @if ($errors->has('pathaozone'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('pathaozone') }}</strong>
              </span>
              @endif
        </div>
        <!-- form group end -->
        <div class="form-group mt-3">
          <label for="" class="form-label">Area</label>
             <select name="pathaoarea" id="pathaoarea" class="pathaoarea chosen-select form-control  {{ $errors->has('pathaoarea') ? ' is-invalid' : '' }}" value="{{ old('pathaoarea') }}"  style="width:100%">
            </select>
             @if ($errors->has('pathaoarea'))
              <span class="invalid-feedback" role="alert">
                <strong>{{ $errors->first('pathaoarea') }}</strong>
              </span>
              @endif
        </div>
        <!-- form group end -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- Note View/Edit Modal -->
<div class="modal fade" id="noteModal" tabindex="-1" aria-labelledby="noteModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="noteModalLabel">Note</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>

      <div class="modal-body">
        {{-- hidden ফিল্ড --}}
        <input type="hidden" id="note_order_id">
        <input type="hidden" id="note_type">

        <div class="form-group">
            <label id="note_label">Note</label>
            <textarea id="note_modal_text" class="form-control" rows="5"
                      placeholder="Write note here..."></textarea>
        </div>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-success" id="saveNoteBtn">Save</button>
      </div>
    </div>
  </div>
</div>

<!-- pathao courier  End-->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // ⭐ Order Note / Admin Note popup open
    $(document).on('click', '.note-modal-btn', function (e) {
        e.preventDefault();

        let orderId = $(this).data('id');
        let type    = $(this).data('type');   // 'order' or 'admin'
        let note    = $(this).data('note') || '';

        $('#note_order_id').val(orderId);
        $('#note_type').val(type);
        $('#note_modal_text').val(note);

        // Modal title / label change
        if (type === 'admin') {
            $('#noteModalLabel').text('Admin Note');
            $('#note_label').text('Admin Note');
        } else {
            $('#noteModalLabel').text('Order Note (Customer)');
            $('#note_label').text('Order Note (Customer)');
        }

        $('#noteModal').modal('show');
    });

    // ⭐ Save Note (AJAX)
    $('#saveNoteBtn').on('click', function () {
        let orderId = $('#note_order_id').val();
        let type    = $('#note_type').val();
        let note    = $('#note_modal_text').val();

        $.ajax({
            url: "{{ route('admin.order.update_note') }}", // নিচে route বানাবো
            type: "POST",
            data: {
                _token: "{{ csrf_token() }}",
                order_id: orderId,
                note_type: type,   // 'order' / 'admin'
                note: note
            },
            success: function (res) {
                if (res.status === 'success') {
                    toastr.success('Note updated successfully');

                    // টেবিলের বাটনের টেক্সট ও data-note আপডেট
                    let selector = '.note-modal-btn[data-id="' + orderId + '"][data-type="' + type + '"]';
                    let $btn = $(selector);
                    $btn.data('note', note);
                    $btn.text(note ? 'View' : 'Add');

                    $('#noteModal').modal('hide');
                } else {
                    toastr.error(res.message || 'Update failed');
                }
            },
            error: function () {
                toastr.error('Something went wrong');
            }
        });
    });

$(document).ready(function(){
    $(".checkall").on('change',function(){
      $(".checkbox").prop('checked',$(this).is(":checked"));
    });
	
	
	// Fraud check
    $(document).on('click', '.fraud-check', function(e){
        e.preventDefault();
        var mobile = $(this).data('mobile');
        if(!mobile){ toastr.error('No mobile number found!'); return; }

        $.ajax({
            url: "{{ route('admin.fraud.check') }}",
            type: "POST",
            data: { mobile: mobile, _token: "{{ csrf_token() }}" },
            success: function(res){
                if(res.status === 'success'){
                    let data = res.data;
                    let msg = `
                        <b>Pathao</b>: Success ${data.pathao.success}, Cancel ${data.pathao.cancel}, Rate ${data.pathao.rate}%<br>
                        <b>RedX</b>: Success ${data.redx.success}, Cancel ${data.redx.cancel}, Rate ${data.redx.rate}%<br>
                        <b>Steadfast</b>: Success ${data.steadfast.success}, Cancel ${data.steadfast.cancel}, Rate ${data.steadfast.rate}%
                    `;
                    toastr.info(msg, 'Fraud Check Result', {timeOut: 8000});
                } else {
                    toastr.warning(res.message, 'Fraud Check Failed');
                }
            },
            error: function(xhr){ toastr.error('Something went wrong!'); }
        });
    });


    // order assign
    $(document).on('submit', 'form#order_assign', function(e){
        e.preventDefault();
        var url = $(this).attr('action');
        var method = $(this).attr('method');
        let user_id=$(document).find('select#user_id').val();
    
        var order = $('input.checkbox:checked').map(function(){
          return $(this).val();
        });
        var order_ids=order.get();
        
        if(order_ids.length ==0){
            toastr.error('Please Select An Order First !');
            return ;
        }
        
        $.ajax({
           type:'GET',
           url:url,
           data:{user_id,order_ids},
           success:function(res){
               if(res.status=='success'){
                toastr.success(res.message);
                window.location.reload();
                
            }else{
                toastr.error('Failed something wrong');
            }
           }
        });
    
    });

    // order status change 
    $(document).on('submit', 'form#order_status_form', function(e){
        e.preventDefault();
        var url = $(this).attr('action');
        var method = $(this).attr('method');
        let order_status=$(document).find('select#order_status').val();
    
        var order = $('input.checkbox:checked').map(function(){
          return $(this).val();
        });
        var order_ids=order.get();
        
        if(order_ids.length ==0){
            toastr.error('Please Select An Order First !');
            return ;
        }
        
        $.ajax({
           type:'GET',
           url:url,
           data:{order_status,order_ids},
           success:function(res){
               if(res.status=='success'){
                toastr.success(res.message);
                window.location.reload();
                
            }else{
                toastr.error('Failed something wrong');
            }
           }
        });
    
    });
    // order delete
    $(document).on('click', '.order_delete', function(e){
        e.preventDefault();
        var url = $(this).attr('href');
        var order = $('input.checkbox:checked').map(function(){
          return $(this).val();
        });
        var order_ids=order.get();
        
        if(order_ids.length ==0){
            toastr.error('Please Select An Order First !');
            return ;
        }
        
        $.ajax({
           type:'GET',
           url:url,
           data:{order_ids},
           success:function(res){
               if(res.status=='success'){
                toastr.success(res.message);
                window.location.reload();
                
            }else{
                toastr.error('Failed something wrong');
            }
           }
        });
    
    });
    
    // multiple print
    $(document).on('click', '.multi_order_print', function(e){
        e.preventDefault();
        var url = $(this).attr('href');
        var order = $('input.checkbox:checked').map(function(){
          return $(this).val();
        });
        var order_ids=order.get();
        
        if(order_ids.length ==0){
            toastr.error('Please Select Atleast One Order!');
            return ;
        }
        $.ajax({
           type:'GET',
           url,
           data:{order_ids},
           success:function(res){
               if(res.status=='success'){
                   console.log(res.items, res.info);                          
                   var myWindow = window.open("", "_blank");                   
                   myWindow.document.write(res.view);
            }else{
                toastr.error('Failed something wrong');
            }
           }
        });
    });
    // multiple courier
    $(document).on('click', '.multi_order_courier', function(e){
        e.preventDefault();
        var url = $(this).attr('href');
        console.log(url);
        var order = $('input.checkbox:checked').map(function(){
          return $(this).val();
        });
        var order_ids=order.get();
        
        if(order_ids.length ==0){
            toastr.error('Please Select An Order First !');
            return ;
        }
        
        $.ajax({
           type:'GET',
           url:url,
           data:{order_ids},
           success:function(res){
               if(res.status=='success'){
                   console.log(res.message);
                   console.log(res.success);
                   console.log(res.failed);
                    toastr.success(res.message);
                    toastr.success(res.success);
                    toastr.error(res.failed);
                    window.location.reload();
                
            }else{
                console.log(res.message);
                toastr.error('Failed something wrong');
            }
           }
        });
    
    });
})
</script>
@endsection
