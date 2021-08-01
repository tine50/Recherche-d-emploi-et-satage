<?php

namespace App\Http\Controllers;

use App\Models\Entreprise;
use App\Models\TypeContrat;
use Illuminate\Http\Request;
use App\Models\TypeEntreprise;
use App\Http\Requests\EntreprisesRequest;

class EntreprisesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $types_contrat = TypeContrat::all();
        $types_entreprises = TypeEntreprise::all();
        return view('admin.entreprises.create', [
            'types_contrat' => $types_contrat,
            'types_entreprises' => $types_entreprises,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\EntreprisesRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(EntreprisesRequest $request)
    {
        $validated = $request->validated();
        Entreprise::create([
            'titre' => $request->titre,
            'sous_titre' => $request->sous_titre,
            'corps' => $request->corps,
            'type_contrats_id' =>  $request->type_contrat,
            'secteur_activite' => $request->secteur_activite,
            'type_entreprises_id' => $request->type_entreprise,
            ]);

            return redirect()->route('admin.entreprises')->with('success','L\'entreprise a bien été enrégistrée');
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Entreprise $entreprise)
    {
        $types_entreprises = TypeEntreprise::all();
        $types_contrat = TypeContrat::all();
        return view('admin.entreprises.edit', [
            'entreprise' => $entreprise,
            'types_contrat' => $types_contrat,
            'types_entreprises' => $types_entreprises,
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(EntreprisesRequest $request, Entreprise $entreprise)
    {
        $validated = $request->validated();
        $entreprise->titre = $request->titre;
        $entreprise->sous_titre = $request->sous_titre;
        $entreprise->corps = $request->corps;
        $entreprise->type_contrats_id = $request->type_contrat;        
        $entreprise->secteur_activite = $request->secteur_activite;
        $entreprise->type_entreprises_id = $request->type_entreprise;

        $entreprise->save();
        return redirect()->route('admin.entreprises')->with('success','L\'entreprise a bien été modifié avec brio');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Entreprise $entreprise)
    {
        $entreprise->delete();
        return redirect()->route('admin.entreprises')->with('success', 'L\'entreprise est supprimée avec success');
    }
}
