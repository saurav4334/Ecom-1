@extends('backEnd.layouts.master')
@section('title','Affiliate Applications')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Applications</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($applications as $app)
                                <tr>
                                    <td>#{{ $app->id }}</td>
                                    <td>{{ $app->name }}</td>
                                    <td>{{ $app->email }}</td>
                                    <td>{{ $app->phone }}</td>
                                    <td>{{ $app->status }}</td>
                                    <td>
                                        @if($app->status === 'pending')
                                            <form method="post" action="{{ route('admin.affiliate.applications.approve', $app->id) }}" class="d-inline">
                                                @csrf
                                                <select name="commission_type" class="form-control form-control-sm d-inline-block" style="width: 110px;">
                                                    <option value="percent">Percent</option>
                                                    <option value="flat">Flat</option>
                                                </select>
                                                <input type="number" step="0.01" name="commission_value" class="form-control form-control-sm d-inline-block" style="width: 90px;" value="5">
                                                <button type="submit" class="btn btn-xs btn-success">Approve</button>
                                            </form>
                                            <form method="post" action="{{ route('admin.affiliate.applications.reject', $app->id) }}" class="d-inline">
                                                @csrf
                                                <button type="submit" class="btn btn-xs btn-warning">Reject</button>
                                            </form>
                                        @endif
                                        <form method="post" action="{{ route('admin.affiliate.applications.delete', $app->id) }}" class="d-inline" onsubmit="return confirm('Delete this application?');">
                                            @csrf
                                            <button type="submit" class="btn btn-xs btn-danger">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr><td colspan="6">No applications found.</td></tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
