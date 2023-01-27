<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kurir extends Model
{
    use HasFactory;
    protected $fillable = [
        'nama_kurir', 'no_wa_kurir', 'password'
    ];
    protected $table = 'kurir';
}