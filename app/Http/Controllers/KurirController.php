<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use App\Kurir;

class KurirController extends Controller
{
	public function index()
    {
        $kurir = Kurir::paginate(5);
        return view('kurir', compact('kurir'));
    }

    public function save(Request $request){
        $validatedData = $request->validate([
                'nama_kurir' => ['required','max:255'],
                'no_wa_kurir' => ['required','max:255'],
                'password' => ['required','max:255'],
            ]);
        $kurir = Kurir::create([
            'nama_kurir' => $request['nama_kurir'],
            'no_wa_kurir' => $request['no_wa_kurir'],
            'password' => $request['password'],
        ]);
        return redirect()->back();
    }
    public function destroy($id)
    {
        $kurir = Kurir::findorfail($id);
        $kurir->delete();

        return redirect()->back();
    }
    
}
