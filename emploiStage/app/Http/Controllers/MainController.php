<?php

namespace App\Http\Controllers;

use App\Models\Postuler;
use App\Models\Entreprise;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\EntreprisesRequest;

class MainController extends Controller
{

    public function home()
    {
        return view('/home');
    }
    public function entreprises()
    {
        $entreprises = Entreprise::paginate(4);
        return view('entreprises', [
            'entreprises' => $entreprises,
        ]);
    }

    public function adminIndex()
    {
        $entreprises = Entreprise::paginate(10);
        return view('admin.entreprises.index',[
            'entreprises' => $entreprises,
        ]);
    }

    public function show(Entreprise $entreprise)
    {
        return view('entreprise', [
            'entreprise' => $entreprise,
        ]);
    }

    public function search()
    {
        $q = request()->input('q');
        $entreprises = Entreprise::where('titre', 'like', "%$q%")
        ->paginate(6);

        return view('entreprises.search', [
            'entreprises' => $entreprises,
        ]);
    }

}
