<?php

namespace App\Http\Controllers;

use App\Models\Konsistensi;
use App\Models\Matrik;
use App\Models\NormalisasiAlternative;
use App\Models\NormalisasiMatriks;
use App\Models\Perankingan;
use Illuminate\Http\Request;

class AhpController extends Controller
{
    public function createbobot(){
        $matriks = Matrik::all();
        //baris 1
        $hh = $matriks['0']['harga'];
        $hb = $matriks['0']['luas_parkir'];
        $ht = $matriks['0']['luas_kamar'];
        $hk = $matriks['0']['jumlah_kasur'];
        $hm = $matriks['0']['kamar_mandi'];
        $hd = $matriks['0']['daya_tampung_tamu'];

        //baris 2
        $bh = $matriks['1']['harga'];
        $bb = $matriks['1']['luas_parkir'];
        $bt = $matriks['1']['luas_kamar'];
        $bk = $matriks['1']['jumlah_kasur'];
        $bm = $matriks['1']['kamar_mandi'];
        $bd = $matriks['1']['daya_tampung_tamu'];

        //baris 3
        $th = $matriks['2']['harga'];
        $tb = $matriks['2']['luas_parkir'];
        $tt = $matriks['2']['luas_kamar'];
        $tk = $matriks['2']['jumlah_kasur'];
        $tm = $matriks['2']['kamar_mandi'];
        $td = $matriks['2']['daya_tampung_tamu'];

        //baris 4
        $kh = $matriks['3']['harga'];
        $kb = $matriks['3']['luas_parkir'];
        $kt = $matriks['3']['luas_kamar'];
        $kk = $matriks['3']['jumlah_kasur'];
        $km = $matriks['3']['kamar_mandi'];
        $kd = $matriks['3']['daya_tampung_tamu'];

        //baris 5
        $mh = $matriks['4']['harga'];
        $mb = $matriks['4']['luas_parkir'];
        $mt = $matriks['4']['luas_kamar'];
        $mk = $matriks['4']['jumlah_kasur'];
        $mm = $matriks['4']['kamar_mandi'];
        $md = $matriks['4']['daya_tampung_tamu'];

        //baris 6
        $dh = $matriks['5']['harga'];
        $db = $matriks['5']['luas_parkir'];
        $dt = $matriks['5']['luas_kamar'];
        $dk = $matriks['5']['jumlah_kasur'];
        $dm = $matriks['5']['kamar_mandi'];
        $dd = $matriks['5']['daya_tampung_tamu'];

        return view('spk.spk-create-bobot', [
            'title' => 'Matriks Bobot',
            // baris 1
            'hh' => $hh,
            'hb' => $hb,
            'ht' => $ht,
            'hk' => $hk,
            'hm' => $hm,
            'hd' => $hd,

            // baris 2
            'bh' => $bh,
            'bb' => $bb,
            'bt' => $bt,
            'bk' => $bk,
            'bm' => $bm,
            'bd' => $bd,

            // baris 3
            'th' => $th,
            'tb' => $tb,
            'tt' => $tt,
            'tk' => $tk,
            'tm' => $tm,
            'td' => $td,

            // baris 4
            'kh' => $kh,
            'kb' => $kb,
            'kt' => $kt,
            'kk' => $kk,
            'km' => $km,
            'kd' => $kd,

            // baris 5
            'mh' => $mh,
            'mb' => $mb,
            'mt' => $mt,
            'mk' => $mk,
            'mm' => $mm,
            'md' => $md,

            // baris 6
            'dh' => $dh,
            'db' => $db,
            'dt' => $dt,
            'dk' => $dk,
            'dm' => $dm,
            'dd' => $dd,
        ]);
    }

    public function showbobot(){
        $matriks = Matrik::all();
        //baris 1
        $hh = $matriks['0']['harga'];
        $hb = $matriks['0']['luas_parkir'];
        $ht = $matriks['0']['luas_kamar'];
        $hk = $matriks['0']['jumlah_kasur'];
        $hm = $matriks['0']['kamar_mandi'];
        $hd = $matriks['0']['daya_tampung_tamu'];

        //baris 2
        $bh = $matriks['1']['harga'];
        $bb = $matriks['1']['luas_parkir'];
        $bt = $matriks['1']['luas_kamar'];
        $bk = $matriks['1']['jumlah_kasur'];
        $bm = $matriks['1']['kamar_mandi'];
        $bd = $matriks['1']['daya_tampung_tamu'];

        //baris 3
        $th = $matriks['2']['harga'];
        $tb = $matriks['2']['luas_parkir'];
        $tt = $matriks['2']['luas_kamar'];
        $tk = $matriks['2']['jumlah_kasur'];
        $tm = $matriks['2']['kamar_mandi'];
        $td = $matriks['2']['daya_tampung_tamu'];

        //baris 4
        $kh = $matriks['3']['harga'];
        $kb = $matriks['3']['luas_parkir'];
        $kt = $matriks['3']['luas_kamar'];
        $kk = $matriks['3']['jumlah_kasur'];
        $km = $matriks['3']['kamar_mandi'];
        $kd = $matriks['3']['daya_tampung_tamu'];

        //baris 5
        $mh = $matriks['4']['harga'];
        $mb = $matriks['4']['luas_parkir'];
        $mt = $matriks['4']['luas_kamar'];
        $mk = $matriks['4']['jumlah_kasur'];
        $mm = $matriks['4']['kamar_mandi'];
        $md = $matriks['4']['daya_tampung_tamu'];

        //baris 6
        $dh = $matriks['5']['harga'];
        $db = $matriks['5']['luas_parkir'];
        $dt = $matriks['5']['luas_kamar'];
        $dk = $matriks['5']['jumlah_kasur'];
        $dm = $matriks['5']['kamar_mandi'];
        $dd = $matriks['5']['daya_tampung_tamu'];

        return view('spk.spk-bobot', [
            'title' => 'Matriks Bobot',
            // baris 1
            'hh' => $hh,
            'hb' => $hb,
            'ht' => $ht,
            'hk' => $hk,
            'hm' => $hm,
            'hd' => $hd,

            // baris 2
            'bh' => $bh,
            'bb' => $bb,
            'bt' => $bt,
            'bk' => $bk,
            'bm' => $bm,
            'bd' => $bd,

            // baris 3
            'th' => $th,
            'tb' => $tb,
            'tt' => $tt,
            'tk' => $tk,
            'tm' => $tm,
            'td' => $td,

            // baris 4
            'kh' => $kh,
            'kb' => $kb,
            'kt' => $kt,
            'kk' => $kk,
            'km' => $km,
            'kd' => $kd,

            // baris 5
            'mh' => $mh,
            'mb' => $mb,
            'mt' => $mt,
            'mk' => $mk,
            'mm' => $mm,
            'md' => $md,

            // baris 6
            'dh' => $dh,
            'db' => $db,
            'dt' => $dt,
            'dk' => $dk,
            'dm' => $dm,
            'dd' => $dd,
        ]);
    }

    public function normalisasimatriks(){
        return view('spk.spk-normalisasi-matriks', [
            'normalisasi' => NormalisasiMatriks::all(),
            'title' => 'Normalisasi Matriks'
        ]);
    }

    public function konsistensi(){
        $nilai = Konsistensi::all();
        $konsistensi = $nilai[0]['konsistensi']; 
        return view('spk.spk-konsistensi', [
            'title' => 'Konsistensi',
            'konsistensi' => $konsistensi
        ]);
    }

    public function normalisasialternative(){
        return view('spk.spk-normalisasi-alternatives', [
            'title' => 'Normalisasi Alternatives',
            'alternatives' => NormalisasiAlternative::all()
        ]);
    }

    public function perankingan(){
        return view('spk.spk-perankingan', [
            'title' => 'Perankingan',
            'ranks' => Perankingan::all()
        ]);
    }
}
