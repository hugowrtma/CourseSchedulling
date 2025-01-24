@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <!-- Base Style table start -->
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5>List Matkul</h5>
                    <a href="{{ route('matkul.create') }}" class="btn btn-primary">Add New</a>
                </div>
                <div class="card-body">
                    <div class="dt-responsive table-responsive">
                        <table id="base-style" class="table table-striped table-bordered nowrap">
                            <thead>
                                <tr>
                                    <th>Kode Matkul</th>
                                    <th>Name</th>
                                    <th>Semester</th>
                                    <th>SKS Teori</th>
                                    <th>SKS Praktek</th>
                                    <th>Jumlah SKS</th>
                                    <th>Pagi</th>
                                    <th>Sore</th>
                                    <th>Ruang</th>
                                    <th>Keterangan</th>
                                    <th class="text-end">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($matkuls as $matkul)
                                    <tr>
                                        <td>{{ $matkul->kode_matkul }}</td>
                                        <td>{{ $matkul->nama_matkul }}</td>
                                        <td>{{ $matkul->semester_matkul }}</td>
                                        <td>{{ $matkul->teori }}</td>
                                        <td>{{ $matkul->praktek }}</td>
                                        <td>{{ $matkul->jumlah_sks }}</td>
                                        <td>{{ $matkul->pagi }}</td>
                                        <td>{{ $matkul->sore }}</td>
                                        <td>{{ $matkul->ruang }}</td>
                                        <td>{{ $matkul->keterangan }}</td>
                                        <td class="text-end">
                                            <ul class="list-inline me-auto mb-0">
                                                <li class="list-inline-item align-bottom" data-bs-toggle="tooltip"
                                                    title="View">
                                                    <a href="#"
                                                        class="avtar avtar-xs btn-link-secondary btn-pc-default"
                                                        data-bs-toggle="modal" data-bs-target="#cust-modal">
                                                        <i class="ti ti-eye f-18"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item align-bottom" data-bs-toggle="tooltip"
                                                    title="Edit">
                                                    <a href="../application/ecom_product-add.html"
                                                        class="avtar avtar-xs btn-link-success btn-pc-default">
                                                        <i class="ti ti-edit-circle f-18"></i>
                                                    </a>
                                                </li>
                                                <li class="list-inline-item align-bottom" data-bs-toggle="tooltip"
                                                    title="Delete">
                                                    <a href="#" class="avtar avtar-xs btn-link-danger btn-pc-default">
                                                        <i class="ti ti-trash f-18"></i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                        </table>
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
