@extends('layouts.kurir')

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

    <div class="row">
        <table class="table">
            <tr>
                <th>Nama Pengirim</th>
                <th>NO WA Pengirim</th>
                <th>Nama Penerima</th>
                <th>Alamat Penerima</th>
                <th>Status barang</th>
            </tr>
            @foreach($users as $result => $b)
            <tr>
                <td>{{$b->nama_pengirim}}</td>
                <td>{{$b->no_wa_pengirim}}</td>
                <td>{{$b->nama_penerima}}</td>
                <td>{{$b->alamat_penerima}}</td>
                <td>{{$b->status_barang}}</td>
            </tr>
            @endforeach
        </table>
    </div>
@endsection
