<?php

namespace App\Models;

use App\Models\Entreprise;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TypeContrat extends Model
{
    use HasFactory;
    protected $fillable = [
        'nom_type_contrat',
    ];
    public function entreprises()
    {
        return $this->hasMany(Entreprise::class, 'foreign_key');
    }
}
