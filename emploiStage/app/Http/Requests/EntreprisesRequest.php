<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EntreprisesRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'titre' => 'required|min:6|max:150',
            'sous_titre' => 'required|min:6|max:200',
            'corps' => 'required',
            'type_contrat' =>  'required',
            'secteur_activite' => 'required|min:5|max:10',
            'type_entreprise' => 'required',
        ];
    }
}
