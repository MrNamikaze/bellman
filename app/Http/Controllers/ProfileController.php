<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        return view('profile');
    }

    public function update(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'last_name' => 'nullable|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . Auth::user()->id,
            'current_password' => 'nullable|required_with:new_password',
            'new_password' => 'nullable|min:5|max:12',
            'password_confirmation' => 'nullable|min:5|max:12|same:new_password'
        ]);

        $user = User::findOrFail(Auth::user()->id);
        $user->name = $request->input('name');
        $user->last_name = $request->input('last_name');
        $user->email = $request->input('email');

        if (!is_null($request->input('current_password'))) {
            if (Hash::check($request->input('current_password'), $user->password)) {
                if($request->input('new_password')==''){
                    $user->save();
                    return redirect()->route('profile')->withSuccess('Profile updated successfully.');
                }
                else{
                    $user->save();
                    $user->password = $request->input('new_password');
                    return redirect()->route('profile')->withSuccess('Profile updated successfully.');
                }
            } else {
                return redirect()->route('profile')->withSuccess('Password yang lama salah!!');
            }
        }
        else{
            return redirect()->route('profile')->withSuccess('Password tidak boleh kosong');
        }

        

        
    }
}
