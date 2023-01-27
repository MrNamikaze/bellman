<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/profile', 'ProfileController@index')->name('profile');
Route::put('/profile', 'ProfileController@update')->name('profile.update');
//kurir
Route::get('/kurir', 'KurirController@index')->name('kurir');
Route::post('/kurir/save', 'KurirController@save')->name('kurir.save');
Route::get('/kurir/destroy/{id}', 'KurirController@destroy')->name('kurir.destroy');
//lokasi
Route::get('/lokasi', 'LokasiController@index')->name('lokasi');
Route::get('/lokasi/tambah_lokasi', 'LokasiController@tambah')->name('lokasi.tambah');
Route::post('/lokasi/save', 'LokasiController@save')->name('lokasi.save');
Route::get('/lokasi/destroy/{id}', 'LokasiController@destroy')->name('lokasi.destroy');
//
Route::get('/bellman', 'BellmanController@index')->name('bellman');
Route::post('/bellman/save', 'BellmanController@save')->name('bellman.save');
Route::get('/bellman/lokasi', 'BellmanController@lokasi')->name('bellman.lokasi');
Route::get('/bellman/destroy', 'BellmanController@destroy')->name('bellman.destroy');
//
Route::get('/karyawan', 'KaryawanController@index')->name('karyawan');
Route::post('/karyawan/vertif', 'KaryawanController@vertif')->name('karyawan.vertif');
Route::get('/karyawan/home', 'KaryawanController@home')->name('karyawan.home');
Route::get('/karyawan/rute_kurir', 'KaryawanController@rute_kurir')->name('karyawan.rute_kurir');
Route::get('/karyawan/status/{id}', 'KaryawanController@status')->name('karyawan.status');
Route::get('/karyawan/logout', 'KaryawanController@logout')->name('karyawan.logout');


Route::get('/about', function () {
    return view('about');
})->name('about');
