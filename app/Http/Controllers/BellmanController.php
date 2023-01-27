<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Kurir;
use App\Lokasi;
use App\Bellman;
use App\Hasil;

class BellmanController extends Controller
{
    public function index()
    {
        $kurir = Kurir::all();
        $lokasi = Lokasi::all();
        return view('bellman', compact('kurir','lokasi'));
    }

    public function save(Request $request){
        $jumlah = count($request['coordinates2'])-1;
        $validatedData = $request->validate([
                'rute' => ['required','max:255']
        ]);
        for($i=$jumlah-1;$i>0;$i--){
            $koor1 = str_replace("LngLat","",$request['coordinates2'][$i]);
            $koor2 = str_replace("(","",$koor1);
            $koor3 = str_replace(")","",$koor2);
            $coor1 = explode(", ",$koor3);
            $long_before = $coor1[0];
            $latitude_before = $coor1[1];

            $koor4 = str_replace("LngLat","",$request['coordinates2'][$i-1]);
            $koor5 = str_replace("(","",$koor4);
            $koor6 = str_replace(")","",$koor5);
            $coor2 = explode(", ",$koor6);
            $long_after = $coor2[0];
            $latitude_after = $coor2[1];

            $earthRadius = 6371000;
            $latFrom = deg2rad($latitude_before);
            $lonFrom = deg2rad($long_before);
            $latTo = deg2rad($latitude_after);
            $lonTo = deg2rad($long_after);

            $lonDelta = $lonTo - $lonFrom;
            $a = pow(cos($latTo) * sin($lonDelta), 2) +
                pow(cos($latFrom) * sin($latTo) - sin($latFrom) * cos($latTo) * cos($lonDelta), 2);
            $b = sin($latFrom) * sin($latTo) + cos($latFrom) * cos($latTo) * cos($lonDelta);

            $angle = atan2(sqrt($a), $b);
            $hasil = $angle * $earthRadius;

            $lokasi = Bellman::create([
                'rute' => $request['rute'],
                'id_kurir' => $request['id_kurir'],
                'id_paket' => $request['id_paket'],
                'long_before' => $long_before,
                'lat_before' => $latitude_before,
                'long_after' => $long_after,
                'lat_after' => $latitude_after,
                'jarak' => $hasil,
            ]);
        }
        return redirect()->back();
    }

    public function lokasi(){
        $users = DB::table('bellman')->select('*')->where('status_barang', '!=', 'sudah dikirim')->groupBy('id_paket')->get();
        foreach ($users as $result => $c) {
            $paket = $c->id_paket;
            DB::insert("INSERT INTO hasil (id_jarak, id_paket, jarak) SELECT id, id_paket, SUM(jarak) as jarak FROM `bellman` WHERE id_paket = $paket GROUP BY rute");
        }
        $hasil1 = DB::table('hasil')->select(DB::raw('id, id_jarak, id_paket, MIN(jarak)'))->groupBy('id_paket')->get();
        $e = 0;
        foreach ($hasil1 as $result => $d) {
            $jarak1 = $d->id_jarak.' ';
            $user = DB::table('bellman')->where('id',$jarak1)->get();
            $rute[$e] = $user[0]->rute;
            $e++;
        }
        $jumlah = count($rute);
        for($j=0;$j<$jumlah;$j++){
            $data[$j] = DB::table('bellman')->where('rute',$rute[$j])->get();
        }
        $lokasi = Lokasi::all();
        return view('rute', compact('lokasi','data'));
    }

    public function destroy(){
        Hasil::truncate();
        return redirect()->back();
    }
}
