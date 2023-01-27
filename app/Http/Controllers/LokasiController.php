<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Lokasi;
use App\Hasil;
use App\Bellman;
use App\Kurir;

class LokasiController extends Controller
{
	public function index()
    {
        $lokasi = Lokasi::all();
        return view('lokasi', compact('lokasi'));
    }

    public function tambah(){
        if(is_null(auth()->user())){
            return redirect('login');
        }
        else{
            $kurir = Kurir::all();
            return view('tambah_lokasi', compact('kurir'));
        }
    }

    public function save(Request $request){
        $koor1 = str_replace("LngLat","",$request['coordinates']);
        $koor2 = str_replace("(","",$koor1);
        $koor3 = str_replace(")","",$koor2);
        $coor = explode(", ",$koor3);
        $kurir = explode(".",$request['kurir']);
        $validatedData = $request->validate([
                'nama_pengirim' => ['required','max:255'],
                'no_wa_pengirim' => ['required','max:255'],
                'nama_penerima' => ['required','max:255'],
                'alamat_penerima' => ['required','max:255'],
                'coordinates' => ['required','max:255'],
            ]);
        $lokasi = Lokasi::create([
            'nama_pengirim' => $request['nama_pengirim'],
            'no_wa_pengirim' => $request['no_wa_pengirim'],
            'nama_penerima' => $request['nama_penerima'],
            'alamat_penerima' => $request['alamat_penerima'],
            'longitude' => $coor[0],
            'latitude' => $coor[1],
            'id_kurir' => $kurir[0],
            'nama_kurir' => $kurir[1],
        ]);
        return redirect()->back();
    }
    public function destroy($id)
    {
        $lokasi = Lokasi::findorfail($id);
        $lokasi->delete();
        $bellman = DB::table('bellman')->where('id_paket',$id)->delete();
        $hasil = DB::table('hasil')->where('id_paket',$id)->delete();
        return redirect()->back();
    }
    
}
