<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <img src="{{ asset('/img/logo.png') }}" alt="" style="width: 55px; border-radius: 5px; margin-right : 10px"><a class=" title" href="{{ route('home') }}">weurkheuy</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
      <ul class="navbar-nav mr-auto">
        @if(Auth::user())
          <li class="nav-item active">
            <a class="entreprises" href="{{ route('entreprises') }}">entreprises <span class="sr-only">(current)</span></a>
          </li>
        @endif
        @if(Auth::user())
          <li class="nav-item">
            <a class="entreprises" href="{{ route('postuler') }}">Postuler <span class="sr-only">(current)</span></a>
          </li>
        @endif
      </ul>
      @if (Auth::user())
        @if (Auth::user()->role === 'ADMIN')
        <li class="nav-item">
          <a class="admin" href="{{ route('admin.entreprises') }}">Espace admin</a>
        </li>
        @endif
      <form method="POST" action="{{ route('logout') }}">
        @csrf
        <button type="submit" class="deconnecter">Deconnexion</button>
      </form>
    @else
      <li class="nav-item">
        <a class="text-white connecter" href="{{ route('login') }}">Se connecter</a>
      </li>
      @endif
      
    </div>
  </nav>