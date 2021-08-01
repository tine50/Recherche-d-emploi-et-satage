@extends('base')

@section('content')
<main role="main">
    <div class="jumbotron" style="background-color:rgb(65,190,242);">
      <div class="col-12 px-0 mt-5">
        <h1 class="text-center"><img src="{{ asset('img/logo.png') }}" alt=""> Bienvenue chez <strong style="color:white"><u>Weurkheuy</u></strong></h1>
      </div>
    </div>

    <div class="row mb-2">
      <div class="col-md-12">
        <div class="card flex-md-row mb-4 box-shadow h-md-300">
          <div class="card-body d-flex flex-column align-items-start">
            <h4><strong class="d-inline-block mb-2" style="color:rgb(65,190,242);"><u>Recherhe d'emploi ou de stage</u></strong></h4>
            <h1 class="card-text mb-auto">Dans le site <strong style="color:rgb(65,190,242);"><u>weurkheuy</u></strong> le chercheur aura la possiblité de chercher des demandes d'emploi ou de stage qui sont disponible</h1>
          </div>
          <img class="card-img-right flex-auto d-none d-md-block" src="{{ asset('img/3.png') }}" alt="Card image cap">
        </div>
      </div>
      <div class="col-md-12">
        <div class="card flex-md-row mb-4 box-shadow h-md-300">
          <img class="card-img-right flex-auto d-none d-md-block" src="{{ asset('img/1.png') }}" alt="Card image cap">
          <div class="card-body d-flex flex-column align-items-start">
            <h4><strong class="d-inline-block mb-2" style="color:rgb(65,190,242);"><u>Convocation pour un entretien</u></strong></h4>
            <h1 class="card-text mb-auto">Dans le site <strong style="color:rgb(65,190,242);"><u>weurkheuy</u></strong> le chercheur aura la possiblité de chercher des demandes d'emploi ou de stage disponible</h1>
          </div>
          
        </div>
      </div>
      <div class="col-md-12">
        <div class="card flex-md-row mb-4 box-shadow h-md-300">
          <div class="card-body d-flex flex-column align-items-start">
            <h4><strong class="d-inline-block mb-2" style="color:rgb(65,190,242);"><u>Gagner un poste avec brio</u></strong></h4>
            <h1 class="card-text mb-auto">Dans le site <strong style="color:rgb(65,190,242);"><u>weurkheuy</u></strong> le chercheur aura la possiblité de chercher des demandes d'emploi ou de stage disponible</h1>
          </div>
          <img class="card-img-right flex-auto d-none d-md-block" src="{{ asset('img/2.png') }}" alt="Card image cap">
        </div>
      </div>
    </div>
  </div>

  </main>
@endsection