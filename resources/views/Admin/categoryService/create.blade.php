@extends('Admin.main')

@section('title', 'Dashboard')

@section('breadcrumb')
    @php
        $breadcrumbs = Breadcrumbs::generate('home');
    @endphp

    @include('admin.layouts.breadcrumb', ['breadcrumbs' => $breadcrumbs])
@endsection

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>Create Service Category</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route('serviceCategory.store') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="nameInput">Name Category</label>
                                    <input type="text" class="form-control" id="nameInput" name="name"
                                        placeholder="Enter Service Category" />
                                </div>
                                <button type="submit" class="btn btn-primary mb-4">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ form-element ] end -->
    </div>
@endsection
@push('scripts')
@endpush
