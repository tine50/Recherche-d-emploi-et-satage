<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Entreprise;
use App\Models\TypeContrat;
use App\Models\TypeEntreprise;
use Illuminate\Database\Seeder;

class EntrepriseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Factory::create();

        for($i = 0; $i <=20; $i ++)
        {
            Entreprise::create([
                'titre' => $faker->sentence($nbWords = 3),
                'type_contrats_id' => TypeContrat::inRandomOrder()->first()->id,
                'sous_titre' => $faker->sentence($nbWords = 10),
                'corps' => $faker->text($maxNbChars = 900),
                'secteur_activite' => $faker->sentence($nbWords = 1),
                'type_entreprises_id' => TypeEntreprise::inRandomOrder()->first()->id,
            ]);

        }
    }
}
