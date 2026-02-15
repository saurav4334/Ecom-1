@extends('layouts.app')

@section('content')
    <h1>Branding</h1>

    @if (session('status'))
        <div>{{ session('status') }}</div>
    @endif

    <form action="{{ route('admin.settings.branding.update') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div>
            <label for="white_logo">White Logo</label>
            <input id="white_logo" type="file" name="white_logo" accept="image/png,image/jpeg,image/webp">
            @if ($settings->white_logo)
                <img src="{{ Storage::url($settings->white_logo) }}" alt="White Logo" width="180">
            @endif
        </div>

        <div>
            <label for="dark_logo">Dark Logo</label>
            <input id="dark_logo" type="file" name="dark_logo" accept="image/png,image/jpeg,image/webp">
            @if ($settings->dark_logo)
                <img src="{{ Storage::url($settings->dark_logo) }}" alt="Dark Logo" width="180">
            @endif
        </div>

        <div>
            <label for="favicon">Favicon</label>
            <input id="favicon" type="file" name="favicon" accept="image/png,image/jpeg,image/webp">
            @if ($settings->favicon)
                <img src="{{ Storage::url($settings->favicon) }}" alt="Favicon" width="48">
            @endif
        </div>

        <button type="submit">Save</button>
    </form>
@endsection
