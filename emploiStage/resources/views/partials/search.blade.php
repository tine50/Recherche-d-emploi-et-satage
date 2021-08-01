
<form class="form-inline my-2 my-lg-0 d-flex justify-content-center"  action="{{ route('entreprises.search') }}" >
@csrf
    <input class="form-control mb-5" style="width: 50%; height : 100px;  border : 2px solid black"type="text" name="q" placeholder="Search" aria-label="Search" value="{{ request()->q ?? '' }}">
    <button class="btn mb-5" style="background-color : rgb(65,190,242); color : white; margin-left : 5px; height : 100px; width : 100px;" type="submit">Rechercher</button>
  </form>