<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hasil extends Model
{
    use HasFactory;
    protected $fillable = [
        'id_jarak','id_paket','jarak'
    ];
    protected $table = 'hasil';
}