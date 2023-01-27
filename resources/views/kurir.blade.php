@extends('layouts.admin')

@section('main-content')

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">{{ __('Dashboard') }}</h1>

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
        <form method="POST" action="{{route('kurir.save')}}" enctype="multipart/form-data">
          {{ csrf_field() }}
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Nama Kurir</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="nama_kurir" id="nama_kurir" placeholder="Nama Kurir">
            </div>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">No WA Kurir</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="no_wa_kurir" id="no_wa_kurir" placeholder="No WA Kurir">
            </div>
          </div>
          <div class="form-group row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="password" id="password" placeholder="Password">
            </div>
          </div>
          <button type="submit" class="btn btn-primary mb-2">Tambah</button>
        </form>
        <br>
    <center>
      <table class="table">
            <tr>
                <th>Nama Kurir</th>
                <th>NO WA Kurir</th>
                <th>Password</th>
                <th>Action</th>
            </tr>
            @foreach($kurir as $result => $b)
            <tr>
                <td>{{$b->nama_kurir}}</td>
                <td>{{$b->no_wa_kurir}}</td>
                <td>{{$b->password}}</td>
                <td>
                    <a href="{{ route('kurir.destroy', $b->id) }}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
            @endforeach
        </table>
        {{ $kurir->links() }}
    </center>
@endsection
