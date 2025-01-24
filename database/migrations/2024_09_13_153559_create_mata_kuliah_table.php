<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('penawaran_matkul', function (Blueprint $table) {
            $table->id();
            $table->string('semester_matkul');
            $table->string('kode_matkul');
            $table->string('nama_matkul');
            $table->integer('teori');
            $table->integer('praktek');
            $table->integer('jumlah_sks');
            $table->integer('pagi');
            $table->integer('sore');
            $table->string('ruang');
            $table->string('keterangan')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('penawaran_matkul');
    }
};
