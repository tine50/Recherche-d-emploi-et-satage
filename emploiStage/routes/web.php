<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\PostulerController;
use App\Http\Controllers\EntreprisesController;
use App\Http\Controllers\TypeContratController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [MainController::class, 'home'])->name('home');

Route::get('/entreprises', [MainController::class, 'entreprises'])->name('entreprises')->middleware('auth');
Route::get('/entreprises/{entreprise:slug}', [MainController::class, 'show'])->middleware('auth')->name('entreprises.slug');

Route::get('/search', [MainController::class, 'search'])->middleware('auth')->name('entreprises.search');

Route::get('postuler', [PostulerController::class, 'postuler'])->middleware('auth')->name('postuler');
Auth::routes();

// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/admin/entreprises', [MainController::class, 'adminIndex'])->middleware('admin')->name('admin.entreprises');
Route::get('/admin/entreprises/create', [EntreprisesController::class, 'create'])->middleware('admin')->name('entreprises.create');
Route::post('/admin/entreprises/store', [EntreprisesController::class, 'store'])->middleware('admin')->name('entreprises.store');
Route::delete('/admin/entreprises/{entreprise}/delete', [EntreprisesController::class, 'delete'])->middleware('admin')->name('entreprises.delete');
Route::get('/admin/entreprises/{entreprise}/edit', [EntreprisesController::class, 'edit'])->middleware('admin')->name('entreprises.edit');
Route::put('/admin/entreprises/{entreprise}/update', [EntreprisesController::class, 'update'])->middleware('admin')->name('entreprises.update');
Route::post('/entreprises/postuler/store', [PostulerController::class, 'store'])->name('entreprises.postuler')->middleware('auth');


// Postuler

Route::get('postuler', [PostulerController::class, 'postuler'])->middleware('auth')->name('postuler');
Route::delete('/postuler/{entreprise}/delete', [EntreprisesController::class, 'delete'])->middleware('auth')->name('postuler.delete');