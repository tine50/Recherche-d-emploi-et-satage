@extends('base')

@section('content')
    <div class="jumbotron">
        @if(Auth::user())
            @include('partials.search')
        @endif
        <h1 class=" text-center mt-5">{{ $entreprise->titre }}</h1>
        <div class="d-flex justify-content-center my-5">
            <a href="{{ route('home') }}" class="btn btn-primary">
                <i class="fas fa-arrow-left"></i>  Retour
            </a>
            <form action="{{ route('entreprises.postuler') }}" method="POST">
                @csrf
                <input type="hidden" value="{{ $entreprise->id }}" name="entreprises_id">
                <button type="submit" class="btn btn-success">Postuler</button>
            </form>    
        </div>
        <h5 class="text-center my-3 pt-3">{{ $entreprise->sous_titre }}</h5>
        <span class="badge badge-dark">{{ $entreprise->type_entreprises->nom_type_entreprise }}</span><span class="badge bg-primary">{{ $entreprise->type_contrats->nom_type_contrat }}</span>
    </div>
    <div class="container">
        <p class="text-center">
            {!! $entreprise->corps !!}
        </p>
    </div>
@endsection