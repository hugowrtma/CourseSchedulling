<?php

namespace App\Imports;

use App\Models\Dosen;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class DosenImport implements ToModel , WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Dosen([
            'npp_dosen' => $row['npp_dosen'],
            'nama_dosen' => $row['nama_dosen'],
            'homebase' => $row['homebase'],
            'status_staff' => $row['status_staff'],
        ]);
    }
}
