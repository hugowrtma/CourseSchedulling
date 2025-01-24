@extends('Admin.main')

@section('title', 'Dashboard')

@section('content')
    <div class="row">
        <!-- Base Style table start -->
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5>List Ruangan</h5>
                    <a href="{{ route('ruangan.create') }}" class="btn btn-primary">Add New</a>
                </div>
                <div class="card-body">
                    <div class="dt-responsive table-responsive">
                        <table id="base-style" class="table table-striped table-bordered nowrap">
                            <thead>
                                <tr>
                                    <th>Nama Ruangan</th>
                                    <th>Ruangan PSI</th>
                                    <th>Jenis Ruangan</th>
                                    <th>Ruangan Kuliah</th>
                                    <th>Ruangan Ujian</th>
                                    <th>Status Ruangan</th>
                                    <th>Ruangan Open</th>
                                    <th class="text-end">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($ruangans as $ruangan)
                                    <tr>
                                        <td>{{ $ruangan->nama_ruangan }}</td>
                                        <td>{{ $ruangan->ruang_psi }}</td>
                                        <td>{{ $ruangan->jenis_ruangan }}</td>
                                        <td>{{ $ruangan->ruang_kuliah }}</td>
                                        <td>{{ $ruangan->ruang_ujian }}</td>
                                        <td>{{ $ruangan->status_ruangan }}</td>
                                        <td>
                                            @if ($ruangan->ruangan_open == 1)
                                                <span class="badge bg-success">Open</span>
                                            @else()
                                                <span class="badge bg-danger">Close</span>
                                            @endif
                                        </td>
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
