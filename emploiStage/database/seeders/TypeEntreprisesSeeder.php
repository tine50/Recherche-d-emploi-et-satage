<?php

namespace Database\Seeders;

use App\Models\TypeEntreprise;
use Illuminate\Database\Seeder;

class TypeEntreprisesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $types_entreprises = ['Entreprise', 'Startup'];
        
        for($i = 0; $i < count($types_entreprises); $i ++)
        {
            TypeEntreprise::create([
                'nom_type_entreprise' => $types_entreprises[$i],
            ]);
        } 
    }
}
