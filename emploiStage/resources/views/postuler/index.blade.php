@extends('base')

@section('content')
<div class="jumbotron">
    {{-- @dump($entreprises->users) --}}
    @if(Auth::user())
      @include('partials.search')
    @endif
    <!-- Example row of columns -->
    <div class="grand">
      @if (count($user->entreprises) > 0)
          @foreach($user->entreprises as $entreprise)
          <div class="col-md-3 m-1 " style="background-color: rgb(52,58,64); border-radius : 12px">
            <h2>{{ $entreprise->titre }}</h2>
            <p style="color:rgb(65,190,242); ">{{ $entreprise->sous_titre }}</p>
            <p style="display: flex; flex-direction : row;justify-content: space-between;">
              <a class="btn text-white" style="background-color: rgb(65,190,242); width: 50%"  href="{{ route('entreprises.slug', $entreprise->slug) }}" role="button">Lire la suite <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                </svg>
              </a>
              <form action="{{ route('postuler.delete', $entreprise->id) }}" method="POST">
                  @csrf
                  @method('delete')
                  <button class="btn btn-danger" type="button" onclick="document.getElementById('model-open-{{ $entreprise->id }}').style.display='block'">Supprimer</button>
                  <div class="modal" tabindex="-1" id="model-open-{{ $entreprise->id }}">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title">La suppression d'un élément est definitve</h5>
                          <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close" onclick="document.getElementById('model-open-{{ $entreprise->id }}').style.display='none'">x</button>
                        </div>
                        <div class="modal-body">
                          <p>Etes-vous sûr de vouloir supprimer cet élément ?</p>
                        </div>
                        <div class="modal-footer">
                          
                          <button type="submit" class="btn btn-primary">Oui</button>
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="document.getElementById('model-open-{{ $entreprise->id }}').style.display='none'">Annuler</button>
                        </div>
                      </div>
                    </div>
                  </div>
                </form>
            </p>
          </div>
        @endforeach 
      @else
         <h1>Vous n'avez pas encore postuler</h1> 
      @endif
      
    </div>
@endsection