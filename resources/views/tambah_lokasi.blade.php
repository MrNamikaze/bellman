@extends('layouts.admin_lokasi_tambah')

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
    <form method="POST" action="{{route('lokasi.save')}}" enctype="multipart/form-data">
      {{ csrf_field() }}
      <div class="form-group row">
        <label for="staticEmail" class="col-sm-2 col-form-label">Nama Pengirim</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="nama_pengirim" id="nama_pengirim" placeholder="Nama Pengirim">
        </div>
      </div>
      <div class="form-group row">
        <label for="staticEmail" class="col-sm-2 col-form-label">No WA Pengirim</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="no_wa_pengirim" id="no_wa_pengirim" placeholder="No WA Pengirim">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Nama Penerima</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="nama_penerima" id="nama_penerima" placeholder="Nama Penerima">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Alamat penerima</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="alamat_penerima" id="alamat_penerima" placeholder="Alamat penerima">
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Kurir</label>
        <div class="col-sm-10">
          <select name="kurir" id="kurir">
            @foreach($kurir as $result => $b)
            <option value="{{$b->id}}.{{$b->nama_kurir}}">{{$b->nama_kurir}}</option>
            @endforeach
          </select>
        </div>
      </div>
      <div class="form-group row">
        <label for="inputPassword" class="col-sm-2 col-form-label">Coordinate</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="coordinates" id="coordinates" placeholder="Koordinat">
        </div>
      </div>
      <button type="submit" class="btn btn-primary mb-2">Tambah</button>
    </form>
    <br>
    <div id='map_tambah_lokasi' style='width: 100%; height: 400px;'></div>
@endsection
