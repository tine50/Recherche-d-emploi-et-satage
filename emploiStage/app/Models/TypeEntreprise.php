<?php

namespace App\Models;

use App\Models\Entreprise;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TypeEntreprise extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom_type_entreprise',
    ];

    public function entreprises()
    {
        return $this->hasMany(Entreprise::class, 'foreign_key');
    }
}
