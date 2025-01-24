@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <!-- Base Style table start -->
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5>Import Dosen</h5>
                    <a href="{{ route('dosen.index') }}" class="btn btn-primary">List Dosen</a>
                </div>
                <div class="card-body">
                    <div class="form-file mb-3">
                        <form action="{{ route('importDosen') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="file" class="form-control" name="file" aria-label="file example" required />
                            <div class="invalid-feedback">Example invalid form file feedback</div>
                            <button class="btn btn-primary mt-2" type="submit">Upload</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Base Style table end -->
    </div>
@endsection
@push('scripts')
    <script>
        $('#base-style').DataTable();
    </script>
@endpush
