@extends('base')

@section('content')
<div class="container">
    <h1 class="mt-5"><center>Edition de l'entreprise</center></h1>
    <form action="{{ route('entreprises.update', $entreprise->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="col-12">
            <div class="form-group">
                <label>Titre</label>
                <input type="text" name="titre" value="{{ $entreprise->titre }}" placeholder="titre de l'entreprise" class="form-control @error('titre') is-invalid @enderror">
                @error('titre')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            
        </div>
        <div class="col-12">
            <div class="form-group">
                <label>Sous-titre</label>
                <input type="text" name="sous_titre" value="{{ $entreprise->sous_titre }}" placeholder="Sous titre de l'entreprise" class="form-control @error('sous_titre') is-invalid @enderror">
                @error('sous_titre')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            
        </div>
        <div class="col-12">
            <div class="form-group">
                <label>Type contrat</label>
                <select name="type_contrat" id="" class="form-control @error('type_contrat') is-invalid @enderror">
                    <option value="{{ $entreprise->type_contrats->id }}">{{ $entreprise->type_contrats->nom_type_contrat }}</option>
                    @foreach ($types_contrat as $type_contrat)
                    <option value="{{ $type_contrat->id }}">{{ $type_contrat->nom_type_contrat }}</option>
                    @endforeach
                </select>
                @error('type_contrat')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="col-12">
            <div class="form-group">
                <label>types entreprises</label>
                <select name="type_entreprise" id="" class="form-control @error('type_entreprise') is-invalid @enderror">
                    <option value="{{ $entreprise->type_entreprises->id }}">{{ $entreprise->type_entreprises->nom_type_entreprise}}</option>
                    @foreach ($types_entreprises as $type_entreprise)
                    <option value="{{ $type_entreprise->id }}">{{ $type_entreprise->nom_type_entreprise }}</option>
                    @endforeach
                </select>
                @error('type_entreprise')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div> 

        <div class="col-12">
            <div class="form-group">
                <label>Secteur d'activité</label>
                <input type="text" name="secteur_activite" value="{{ $entreprise->secteur_activite }}" placeholder="Secteur d'activité de l'entreprise" class="form-control @error('secteur_activite') is-invalid @enderror">
                @error('secteur_activite')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="col-12">
            <div class="form-group">
                <label>Contenu</label>
                <textarea name="corps" id="contenu_editor" cols="30" rows="10" placeholder="Contenu de l'entreprise" class="form-control @error('corps') is-invalid @enderror">{{ $entreprise->corps }}</textarea>
                @error('corps')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
            <script>
                tinymce.init({
                  selector: '#contenu_editor'
                });
            </script>
        </div>
        
        <div class="col-12">
            <div class="form-group text-center">
                <button type="submit" class="btn btn-primary">Ajouter</button>
            </div>
        </div>
    </form>
</div>
@endsection