<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Imports\MataKuliahImport;
use App\Imports\RuanganImport;
use App\Imports\DosenImport;
use Maatwebsite\Excel\Facades\Excel;


class ExcelImportController extends Controller
{

    public function formimportMataKuliah()
    {
        return view('admin.matkul.import');
    }

    public function importMataKuliah(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xls,xlsx'
        ]);

        Excel::import(new MataKuliahImport, $request->file('file'));

        return redirect()->route(route: 'matkul.index')->with('success', 'Data Mata Kuliah berhasil diimpor!');
    }

    public function formimportRuangan()
    {
        return view('admin.ruangan.import');
    }

    public function importRuangan(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xls,xlsx'
        ]);

        Excel::import(new RuanganImport, $request->file('file'));

        return redirect()->route(route: 'ruangan.index')->with('success', 'Data Ruangan berhasil diimpor!');
    }

    public function formimportDosen()
    {
        return view('admin.dosen.import');
    }

    public function importDosen(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:xls,xlsx'
        ]);

        Excel::import(new DosenImport, $request->file('file'));

        return redirect()->route(route: 'dosen.index')->with('success', 'Data Dosen berhasil diimpor!');
    }

}