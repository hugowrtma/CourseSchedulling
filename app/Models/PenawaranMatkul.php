<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PenawaranMatkul extends Model
{
    use HasFactory;

    protected $table = 'penawaran_matkul';
    protected $fillable = ['semester_matkul', 'kode_matkul', 'nama_matkul', 'teori', 'praktek', 'jumlah_sks','pagi','sore','ruang','keterangan'];
}
