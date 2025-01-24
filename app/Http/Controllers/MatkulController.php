<?php

namespace App\Http\Controllers;

use App\Models\PenawaranMatkul;
use Illuminate\Http\Request;
use App\Services\ACO;

class MatkulController extends Controller
{

    public function optimizeSchedule()
    {
        $aco = new ACO(10, 100, 0.1, 1, 2);
        $result = $aco->optimize()->getData(true);

        return view('admin.optimized', ['schedule' => $result]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $matkuls = PenawaranMatkul::all();
        return view('admin.matkul.index', compact('matkuls'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.matkul.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'semester_matkul' => 'required|integer',
            'kode_matkul' => 'required|string|max:255',
            'nama_matkul' => 'required|string|max:255',
            'teori' => 'required|integer',
            'praktek' => 'required|integer',
            'pagi' => 'required|integer',
            'sore' => 'required|integer',
            'ruang' => 'required|string',
        ]);

        $jumlah_sks = $request->teori + $request->praktek;

        PenawaranMatkul::create([
            'semester_matkul' => $request->semester_matkul,
            'kode_matkul' => $request->kode_matkul,
            'nama_matkul' => $request->nama_matkul,
            'teori' => $request->teori,
            'praktek' => $request->praktek,
            'jumlah_sks' => $jumlah_sks,
            'pagi' => $request->pagi,
            'sore' => $request->sore,
            'ruang' => $request->ruang,
            'keterangan' => $request->keterangan,
        ]);
        return redirect()->route('matkul.index')->with('success', 'Mata Kuliah berhasil ditambahkan!');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
