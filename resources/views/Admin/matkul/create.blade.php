@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5>Create Matakul</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route('matkul.store') }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="semester_matkul">Semester Matkul</label>
                                    <input type="number" class="form-control" id="semester_matkul" name="semester_matkul"
                                        placeholder="1" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="kode_matkul">Kode Matkul</label>
                                    <input type="text" class="form-control" id="kode_matkul" name="kode_matkul"
                                        placeholder="A11.64201" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="nama_matkul">Nama Matkul</label>
                                    <input type="text" class="form-control" id="nama_matkul" name="nama_matkul"
                                        placeholder="Organisasi dan Arsitektur Komputer" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="teori">SKS Teori</label>
                                    <input type="number" class="form-control" id="teori" name="teori"
                                        placeholder="2" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="praktek">SKS Praktek</label>
                                    <input type="number" class="form-control" id="praktek" name="praktek"
                                        placeholder="3" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="pagi">Pagi</label>
                                    <input type="number" class="form-control" id="pagi" name="pagi"
                                        placeholder="40" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="sore">Sore</label>
                                    <input type="number" class="form-control" id="sore" name="sore"
                                        placeholder="40" />
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="ruang">Ruang</label>
                                    <select class="form-select" required aria-label="select example" name="ruang">
                                        <option value="">Open this select menu</option>
                                        <option value="Teori">Teori</option>
                                        <option value="Praktek">Praktek</option>
                                        <option value="Teori & Praktek">Teori & Praktek</option>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="keterangan">Keterangan</label>

                                    <textarea class="form-control" id="keterangan" name="keterangan" placeholder="Kurikulum OBE 2023" required></textarea>
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
