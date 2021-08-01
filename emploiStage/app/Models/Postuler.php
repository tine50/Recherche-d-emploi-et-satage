<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Postuler extends Model
{
    use HasFactory;

    protected $fillable = [
        'users_id',
        'entreprises_id',
    ];
}
