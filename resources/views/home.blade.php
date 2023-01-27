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

    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Kurir</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $widget['kurir'] }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Paket</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $widget['lokasi'] }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Users -->
        <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">{{ __('Users') }}</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">{{ $widget['users'] }}</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-users fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <table class="table">
            <tr>
                <th>Nama Pengirim</th>
                <th>NO WA Pengirim</th>
                <th>Nama Penerima</th>
                <th>Alamat Penerima</th>
                <th>Nama Kurir</th>
                <th>Status barang</th>
            </tr>
            @foreach($lokasi2 as $result => $b)
            <tr>
                <td>{{$b->nama_pengirim}}</td>
                <td>{{$b->no_wa_pengirim}}</td>
                <td>{{$b->nama_penerima}}</td>
                <td>{{$b->alamat_penerima}}</td>
                <td>{{$b->nama_kurir}}</td>
                <td>{{$b->status_barang}}</td>
            </tr>
            @endforeach
        </table>
        {{ $lokasi2->links() }}
@endsection
