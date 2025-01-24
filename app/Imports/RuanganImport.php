<?php

namespace App\Imports;

use App\Models\Ruangan;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class RuanganImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Ruangan([
            'nama_ruangan' => $row['nama_ruangan'],
            'ruang_psi' => $row['ruang_psi'],
            'jenis_ruangan' => $row['jenis_ruangan'],
            'ruang_kuliah' => $row['ruang_kuliah'],
            'status_ruangan' => $row['status_ruangan'],
            'ruangan_open' => $row['ruangan_open'],
        ]);
    }
}
