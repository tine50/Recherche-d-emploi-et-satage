@extends('base')

@section('content')
<br>
<div class="container">
    <h1 class="mt-5"><center>Entreprises</center></h1>
    <div class="d-flex justify-content-center"><a href="{{ route('entreprises.create') }}" class=" btn btn-info"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
      <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
    </svg> Ajouter une nouvelle entreprise</a></div>
  <table class="table table-hover mt-5">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Titre</th>
        <th scope="col">Créé le</th>
        <th scope="col">Action</th>
      </tr>
    </thead>
    <tbody>
      @foreach ($entreprises as $entreprise)
        <tr>
            <th scope="active">{{ $entreprise->id }}</th>
            <td>{{ $entreprise->titre }}</td>
            <td>{{ $entreprise->dateFormatted() }}</td>
            <td class="d-flex">
                <a href="{{ route('entreprises.edit', $entreprise->id) }}" class="btn btn-warning  mx-3 ">Editer</a>
                <form action="{{ route('entreprises.delete', $entreprise->id) }}" method="POST">
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
            </td>
            {{-- <a href="#" class="btn btn-danger  mx-3 ">Supprimer</a> --}}
        </tr>
      @endforeach
    </tbody>
  </table>
  <div class="d-flex justify-content-center mt-5">
    {{ $entreprises->links('/../../pagination.custom') }}
  </div>
</div>
@endsection