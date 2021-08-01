<?php

namespace Database\Seeders;

use App\Models\TypeContrat;
use Illuminate\Database\Seeder;

class TypeContratSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $typesContrats = ['CDI', 'stage'];
        for($i = 0; $i < count($typesContrats); $i ++)
        {
            TypeContrat::create([
            'nom_type_contrat' => $typesContrats[$i],
            ]);
        } 
    }
}
