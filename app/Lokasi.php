<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lokasi extends Model
{
    use HasFactory;
    protected $fillable = [
        'nama_pengirim', 'no_wa_pengirim', 'nama_penerima', 'alamat_penerima', 'longitude', 'latitude', 'id_kurir', 'nama_kurir'
    ];
    protected $table = 'lokasi';
}