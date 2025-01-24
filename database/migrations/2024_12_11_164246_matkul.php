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
        Schema::create('matkul_optimasi', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('dosen_id');
            $table->unsignedBigInteger('penawaran_matkul_id');
            $table->unsignedBigInteger('ruang_teori_id')->nullable();
            $table->unsignedBigInteger('ruang_praktik_id')->nullable();
            $table->json('jadwal_teori')->nullable();
            $table->json('jadwal_praktek')->nullable();
            $table->timestamps();

            $table->foreign('dosen_id')->references('id')->on('dosen')->onDelete('cascade');
            $table->foreign('penawaran_matkul_id')->references('id')->on('penawaran_matkul')->onDelete('cascade');
            $table->foreign('ruang_teori_id')->references('id')->on('ruangan')->onDelete('cascade');
            $table->foreign('ruang_praktik_id')->references('id')->on('ruangan')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('matkul_optimasi');
    }
};
