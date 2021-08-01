<?php

namespace App\Observers;

use App\Models\Entreprise;
use Cocur\Slugify\Slugify;

class EntrepriseObserver
{
    /**
     * Handle the Entreprise "created" event.
     *
     * @param  \App\Models\Entreprise  $entreprise
     * @return void
     */
    public function created(Entreprise $entreprise)
    {
        $instance = new Slugify();
        $entreprise->slug = $instance->slugify($entreprise->titre);
        $entreprise->save();
    }

    /**
     * Handle the Entreprise "updated" event.
     *
     * @param  \App\Models\Entreprise  $entreprise
     * @return void
     */
    public function updated(Entreprise $entreprise)
    {
        $instance = new Slugify();
        $entreprise->slug = $instance->slugify($entreprise->titre);
        $entreprise->saveQuietly();
    }

    /**
     * Handle the Entreprise "deleted" event.
     *
     * @param  \App\Models\Entreprise  $entreprise
     * @return void
     */
    public function deleted(Entreprise $entreprise)
    {
        //
    }

    /**
     * Handle the Entreprise "restored" event.
     *
     * @param  \App\Models\Entreprise  $entreprise
     * @return void
     */
    public function restored(Entreprise $entreprise)
    {
        //
    }

    /**
     * Handle the Entreprise "force deleted" event.
     *
     * @param  \App\Models\Entreprise  $entreprise
     * @return void
     */
    public function forceDeleted(Entreprise $entreprise)
    {
        //
    }
}
