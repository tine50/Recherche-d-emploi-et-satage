<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Postuler;
use App\Models\Entreprise;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\EntreprisesRequest;

class PostulerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    public function postuler()
    {
        $user = User::find(Auth::user()->id);
        return view('postuler.index', [
            'user' => $user,
        ]);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    public function store(Request $request)
    {        
        Postuler::create([
            'entreprises_id' => $request->entreprises_id,
            'users_id' => Auth::user()->id,
        ]);

        return redirect()->route('entreprises')->with('success','Vous avec postuler avec succes');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    public function delete(Postuler $postuler)
    {
        $postuler->delete();
        return redirect()->route('postuler')->with('success', 'L\'entreprise postulé est supprimée avec success');
    }
}
