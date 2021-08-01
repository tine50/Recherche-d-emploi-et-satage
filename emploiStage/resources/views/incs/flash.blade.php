@if ($message = Session::get('success'))
<br><br>
    <div class="alert alert-success alert-block mt-5">
        <button class="close" type="button" data-dismiss="alert">x</button>
        <strong>{{ $message }}</strong>
    </div>
@endif