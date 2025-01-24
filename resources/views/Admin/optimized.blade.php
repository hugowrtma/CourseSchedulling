@extends('Admin.main')

@section('title', 'Dashboard')


@section('content')
    <div class="row">
        <div class="col-sm-12">
            <div class="card">
                <div class="card-header">
                    <h5>Table Penawaran Mata Kuliah</h5>
                </div>
                <div class="card-body">
                    <div class="dt-responsive table-responsive">
                        <table id="simpletable" class="table table-striped table-bordered nowrap">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Semester</th>
                                    <th>Kode Matkul</th>
                                    <th>Nama Matkul</th>
                                    <th>SKS Teori</th>
                                    <th>Jadwal Teori</th>
                                    <th>Ruang Teori</th>
                                    <th>SKS Praktek</th>
                                    <th>Jadwal Praktek</th>
                                    <th>Ruang Praktek</th>
                                    <th>Dosen</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                    $groupedSchedule = collect($schedule)->groupBy('kode_matkul');
                                @endphp
                                @foreach ($groupedSchedule as $kode_matkul => $items)
                                    @php
                                        $item = $items->first();
                                        $teori = $items->where('jadwal_teori', '!=', null)->first();
                                        $praktek = $items->where('jadwal_praktek', '!=', null)->first();
                                    @endphp
                                    <tr>
                                        <td>{{ $no++ }}</td>
                                        <td>{{ $item['semester'] }}</td>
                                        <td>{{ $item['kode_matkul'] }}</td>
                                        <td>{{ $item['nama_matkul'] }}</td>
                                        <td>{{ $item['sks_teori'] }}</td>
                                        <td>
                                            @if ($teori && $teori['jadwal_teori'])
                                                {{ $teori['jadwal_teori']['day'] }} - {{ $teori['jadwal_teori']['time'] }}
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>
                                            @if ($teori && $teori['ruang_teori'])
                                                {{ $teori['ruang_teori'] }}
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>{{ $item['sks_praktek'] }}</td>

                                        <td>
                                            @if ($praktek && $praktek['jadwal_praktek'])
                                                {{ $praktek['jadwal_praktek']['day'] }} -
                                                {{ $praktek['jadwal_praktek']['time'] }}
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>
                                            @if ($praktek && $praktek['ruang_praktek'])
                                                {{ $praktek['ruang_praktek'] }}
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td>
                                            @if (is_array($item['dosen']) || is_object($item['dosen']))
                                                {{ $item['dosen']['nama_dosen'] ?? '-' }}
                                            @else
                                                {{ $item['dosen'] ?? '-' }}
                                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </div>

    {{-- <h1>Optimize selesai</h1> --}}
@endsection
@push('scripts')
    <script>
        $('#simpletable').DataTable();
    </script>
@endpush
