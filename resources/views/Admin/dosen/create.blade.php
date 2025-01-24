@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>Create Dosen</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route('dosen.store') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="npp_dosen">NPP Dosen</label>
                                    <input type="text" class="form-control" id="npp_dosen" name="npp_dosen"
                                        placeholder="Enter NPP" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="nama_dosen">Name Dosen</label>
                                    <input type="text" class="form-control" id="nama_dosen" name="nama_dosen"
                                        placeholder="Enter Name Dosen" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="homebase">Homebase</label>
                                    <input type="text" class="form-control" id="homebase" name="homebase"
                                        placeholder="Enter Homebase" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="status_staff">Status Staff</label>
                                    <select class="form-select" required aria-label="select example" name="status_staff">
                                        <option value="">Open this select menu</option>
                                        <option value="Aktif">Aktif</option>
                                        <option value="Non Aktif">Non Aktif</option>
                                    </select>
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
