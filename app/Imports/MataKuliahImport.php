<?php

namespace App\Imports;

use App\Models\PenawaranMatkul;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class MataKuliahImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        if (empty($row['semester_matkul']) || empty($row['kode_matkul']) || empty($row['nama_matkul'])) {
            return null;
        }

        $teori = isset($row['teori']) ? (int) $row['teori'] : 0;
        $praktek = isset($row['praktek']) ? (int) $row['praktek'] : 0;
        $jumlahSks = $teori + $praktek;

        return new PenawaranMatkul([
            'semester_matkul' => $row['semester_matkul'] ?? null,
            'kode_matkul' => $row['kode_matkul'] ?? null,
            'nama_matkul' => $row['nama_matkul'] ?? null,
            'teori' => $teori,
            'praktek' => $praktek,
            'jumlah_sks' => $jumlahSks,
            'pagi' => isset($row['pagi']) ? (int) $row['pagi'] : 0,
            'sore' => isset($row['sore']) ? (int) $row['sore'] : 0,
            'ruang' => $row['ruang'] ?? null,
            'keterangan' => $row['keterangan'] ?? null,
        ]);
    }
}
