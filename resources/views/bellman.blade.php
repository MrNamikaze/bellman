@extends('layouts.bellman_lokasi')

@section('main-content')

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">{{ __('Tambah Lokasi') }}</h1>

    @if (session('success'))
    <div class="alert alert-success border-left-success alert-dismissible fade show" role="alert">
        {{ session('success') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    @endif

    @if (session('status'))
        <div class="alert alert-success border-left-success" role="alert">
            {{ session('status') }}
        </div>
    @endif
    <form method="POST" action="{{route('bellman.save')}}" enctype="multipart/form-data">
      {{ csrf_field() }}
      <div class="after-add-more">
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">Rute</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" value="{{rand()}}" name="rute" id="rute" placeholder="Rute">
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">Paket</label>
          <div class="col-sm-10">
            <select name="id_paket" id="id_paket">
              @foreach($lokasi as $result1 => $c)
              <option value="{{$c->id}}">{{$c->nama_penerima}}</option>
              @endforeach
            </select>
          </div>
        </div>
        <div class="form-group row">
          <label for="inputPassword" class="col-sm-2 col-form-label">Kurir</label>
          <div class="col-sm-10">
            <select name="id_kurir" id="id_kurir">
              @foreach($kurir as $result => $b)
              <option value="{{$b->id}}">{{$b->nama_kurir}}</option>
              @endforeach
            </select>
          </div>
        </div>
      </div>
      <div class="copy" style="width: 1px; height: 1px">
            <input type="text" class="form-control" name="coordinates2[]" id="coordinates2[]" placeholder="Koordinat" hidden>
      </div>
      <button type="submit" class="btn btn-primary mb-2">Tambah</button>
    </form>
    <br>
    <div id='map_tambah_lokasi' style='width: 100%; height: 400px;'></div>
@endsection
