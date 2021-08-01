<?php

namespace App\Models;

use App\Models\User;
use App\Models\TypeContrat;
use App\Models\TypeEntreprise;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Entreprise extends Model
{
    use HasFactory;

    public $typeEntreprise;
    public function dateFormatted()
    {
        return date_format($this->created_at, 'd-m-Y');
    }

    protected $fillable = [
        'titre',
        'sous_titre',
        'corps',
        'type_contrats_id',
        'secteur_activite',
        'type_entreprises_id',
    ];

    public function type_contrats()
    {
        return $this->belongsTo(TypeContrat::class);
    }


    

    public function type_entreprises()
    {
        return $this->belongsTo(TypeEntreprise::class);
    }


    public function users()
    {
        return $this->belongsToMany(User::class, 'postulers','entreprises_id', 'users_id');
    }
    
}
