@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>Create Ruangan</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route('ruangan.store') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="nama_ruangan">Nama Ruangan</label>
                                    <input type="text" class="form-control" id="nama_ruangan" name="nama_ruangan"
                                        placeholder="D.2.A" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="ruang_psi">Ruang PSI</label>
                                    <input type="text" class="form-control" id="ruang_psi" name="ruang_psi"
                                        placeholder="D.2.A" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="jenis_ruangan">Jenis Ruangan</label>
                                    <input type="text" class="form-control" id="jenis_ruangan" name="jenis_ruangan"
                                        placeholder="Lab,D.5,Aula" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="ruang_kuliah">Ruangan Kuliah</label>
                                    <input type="number" class="form-control" id="ruang_kuliah" name="ruang_kuliah"
                                        placeholder="40" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="ruang_ujian">Ruang Ujian</label>
                                    <input type="number" class="form-control" id="ruang_ujian" name="ruang_ujian"
                                        placeholder="20" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="status_ruangan">Status Ruangan</label>
                                    <input type="text" class="form-control" id="status_ruangan" name="status_ruangan"
                                        placeholder="praktek" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="ruangan_open">Ruangan Open</label>
                                    <select class="form-select" required aria-label="select example" name="ruangan_open">
                                        <option value="">Open this select menu</option>
                                        <option value="1">Aktif</option>
                                        <option value="0">Non Aktif</option>
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
