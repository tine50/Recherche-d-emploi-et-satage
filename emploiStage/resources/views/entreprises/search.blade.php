@extends('base')

@section('content')
<div class="jumbotron">
  @if(Auth::user())
    @include('partials.search')
  @endif
    @if (request()->input('q'))
      <h6 class="mb-3"> {{ $entreprises->total() }} résultat(s) pour la recherche "{{ request()->input('q') }}"</h6>
      
  @endif
    <!-- Example row of columns -->
    <div class="row">

      @foreach($entreprises as $entreprise)
        <div class="col-md-3 m-1 " style="background-color: rgb(52,58,64); border-radius : 12px">
          <h2>{{ $entreprise->titre }}</h2>
          <p style="color:rgb(65,190,242); ">{{ $entreprise->sous_titre }}</p>
          <p>
            <a class="btn text-white" style="background-color: rgb(65,190,242); " href="{{ route('entreprises.slug', $entreprise->slug) }}" role="button">Lire la suite <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
              </svg>
            </a>
          </p>
        </div>
      @endforeach
    </div>

    <hr>
    <div class="d-flex justify-content-center mt-5">
      {{ $entreprises->links('../pagination.custom') }}
  </div>
  </div> <!-- /container -->
@endsection