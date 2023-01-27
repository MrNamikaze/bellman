<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Kurir;
use App\Lokasi;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $users = User::count();
        $kurir = Kurir::count();
        $lokasi = Lokasi::count();
        $lokasi2 = Lokasi::paginate(5);
        $widget = [
            'users' => $users,
            'kurir' => $kurir,
            'lokasi' => $lokasi,
            //...
        ];

        return view('home', compact('widget','lokasi2'));
    }
}
