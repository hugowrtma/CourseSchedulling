<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ExcelImportController;
use App\Http\Controllers\MatkulController;
use App\Http\Controllers\RuanganController;
use App\Http\Controllers\DosenController;

Route::get('/', function () {
    return view('admin.dashboard');
});

Route::get('optimize-schedule', [MatkulController::class, 'optimizeSchedule'])->name('matkul.optimizeSchedule');

Route::resource('matkul', MatkulController::class);
Route::resource('ruangan', RuanganController::class);
Route::resource('dosen', DosenController::class);

Route::get('import-mata-kuliah', [ExcelImportController::class, 'formimportMataKuliah'])->name('importMatkul');
Route::get('import-ruangan', [ExcelImportController::class, 'formimportRuangan'])->name('importRuangan');
Route::get('import-dosen', [ExcelImportController::class, 'formimportDosen'])->name('importDosen');

Route::post('import-mata-kuliah', [ExcelImportController::class, 'importMataKuliah'])->name('import.mata_kuliah');
Route::post('import-ruangan', [ExcelImportController::class, 'importRuangan'])->name('import.ruangan');
Route::post('import-dosen', [ExcelImportController::class, 'importDosen'])->name('import.dosen');
