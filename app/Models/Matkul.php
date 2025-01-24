<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Matkul extends Model
{
    use HasFactory;

    protected $table = 'matkul_optimasi';

    protected $fillable = ['dosen_id', 'penawaran_matkul_id', 'ruang_teori_id', 'ruang_praktik_id', 'jadwal_teori', 'jadwal_praktek'];

}
