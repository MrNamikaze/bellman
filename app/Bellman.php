<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bellman extends Model
{
    use HasFactory;
    protected $fillable = [
        'rute', 'id_kurir', 'id_paket', 'long_before', 'lat_before', 'long_after', 'lat_after', 'jarak'
    ];
    protected $table = 'bellman';
}