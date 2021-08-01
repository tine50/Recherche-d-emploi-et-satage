<?php
 
namespace App\Providers;
 
use App\Models\Entreprise;
use App\Observers\EntrepriseObserver;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
 
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Entreprise::observe(EntrepriseObserver::class);
        Schema::defaultStringLength(191);
    }
 
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}