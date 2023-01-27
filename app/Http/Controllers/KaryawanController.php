<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User;
use App\Kurir;
use App\Lokasi;
use App\Bellman;
use App\Hasil;

class KaryawanController extends Controller
{
	public function index()
    {
        return view('login_karyawan');
    }
 
	public function home(Request $request){
		$id = $request->session()->get('id');
		$nama = $request->session()->get('nama');
		$wa = $request->session()->get('wa');
		$users = DB::table('lokasi')
                ->where('id_kurir', '=', $id)
                ->get();
		return view('home_kurir', compact('users','id','nama','wa'));
	}

	public function vertif(Request $request) {
		$wa = $request['no_wa_kurir'];
		$password = $request['password'];
		$users = DB::table('kurir')
                ->where('no_wa_kurir', '=', $wa)
                ->where('password', '=', $password)
                ->get();
        $status = sizeof($users);
        if($status==1){
        	foreach ($users as $result => $b) {
        		$id = $b->id;
        		$wa_kurir = $b->no_wa_kurir;
        		$nama_kurir = $b->nama_kurir;
        		$request->session()->put('nama', $nama_kurir);
        		$request->session()->put('wa', $wa_kurir);
        		$request->session()->put('id', $id);
        	}
        	return redirect('karyawan/home');
        }
        else{
        	return redirect()->back();
        }
	}

	public function rute_kurir(Request $request){
		$id = $request->session()->get('id');
		$users = DB::table('bellman')->select('*')->groupBy('id_paket')->get();
		$status_barang = 'belum terkirim';
        foreach ($users as $result => $c) {
            $paket = $c->id_paket;
            DB::insert("INSERT INTO hasil (id_jarak, id_paket, jarak) SELECT id, id_paket, SUM(jarak) as jarak FROM `bellman` WHERE id_paket = $paket AND id_kurir = $id AND status_barang = '$status_barang' GROUP BY rute");
        }
        $hasil1 = DB::table('hasil')->select(DB::raw('id, id_jarak, id_paket, MIN(jarak)'))->groupBy('id_paket')->get();
        $e = 0;
        foreach ($hasil1 as $result => $d) {
            $jarak1 = $d->id_jarak.' ';
            $user = DB::table('bellman')->where('id','=',$jarak1)->get();
            $id_kurir = $user[0]->id_kurir;
            if($id == $id_kurir){
                $rute[$e] = $user[0]->rute;
            }
            $e++;
        }
        $jumlah = count($rute);
        for($j=0;$j<$jumlah;$j++){
            $data[$j] = DB::table('bellman')->where('rute',$rute[$j])->get();
        }
        $lokasi = DB::table('lokasi')->where('status_barang', 'belum terkirim')->where('id_kurir','=',$id)->get();
        return view('rute_kurir', compact('lokasi','data'));
	}

	public function status(Request $request, $id){
		$id_kurir = $request->session()->get('id');
		$status = [
            'status_barang' => 'sudah dikirim',
        ];
        $lokasi = Lokasi::where('id', '=', $id)->update($status);
        DB::table('bellman')
                ->where('id_kurir','=', $id_kurir)
                ->where('id_paket','=', $id)
                ->update($status);
        $hasil = Hasil::where('id_paket', '=', $id)->update($status);
        return redirect('karyawan/home');
    }
 
	// menghapus session
	public function logout(Request $request) {
		$request->session()->forget('nama');
		$request->session()->forget('wa');
		$request->session()->forget('id');
		return redirect('karyawan');
	}
}
