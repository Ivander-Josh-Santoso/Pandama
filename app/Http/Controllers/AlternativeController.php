<?php

namespace App\Http\Controllers;

use App\Models\Alternative;
use Illuminate\Http\Request;

class AlternativeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return redirect('/spk');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $house = $request->house;
        $data = json_decode($house, true);

        $validatedData['id_wisma'] = $data['id'];
        $validatedData['nama_wisma'] = $data['nama_wisma'];
        $validatedData['harga'] = $data['harga'];
        $validatedData['luas_parkir'] = $data['luas_parkir'];
        $validatedData['luas_kamar'] = $data['luas_kamar'];
        $validatedData['jumlah_kasur'] = $data['jumlah_kasur'];
        $validatedData['kamar_mandi'] = $data['kamar_mandi'];
        $validatedData['daya_tampung_tamu'] = $data['daya_tampung_tamu'];
        $validatedData['slug'] = $data['slug'];
        // $validatedData['tahun_dibangun'] = intval($data['tahun_dibangun']);

        Alternative::create($validatedData);
        return redirect('/spk')->with('success', 'New Alternative has ben added');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function show(Alternative $alternative)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function edit(Alternative $alternative)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alternative $alternative)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Alternative  $alternative
     * @return \Illuminate\Http\Response
     */
    public function destroy(Alternative $alternative)
    {
        Alternative::destroy($alternative->id);

        return redirect('/spk')->with('success', 'Alternative has been deleted');
    }
}
