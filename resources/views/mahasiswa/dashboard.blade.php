@extends('layouts.mhsmain')
@section('content')
    <!-- Page Content  -->
    @if (session()->has('success'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <i data-feather="check"></i>
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif
    
    <div class="d-flex justify-content-center text-center">

        <div class="card d-inline-block col-10">
            <div class="card-header">Selamat Datang !{{ Auth::user()->name }}</div>
            <div class="card-body">
                <p>
                <h5>
                {{ Auth::user()->name }}
                </h5>
                </p>
                <br>
                <p>
                    Halaman Dashboard Mahasiswa
                </p>
                <p>
                    Keterangan
                </p>
            </div>
        </div>
    </div>
    {{-- <img src="/img/sticker1.png" class="d-inline-block ms-5 position-absolute" style="width: 250px; top:130px" alt=""> --}}


    {{-- <div>
        <a href="/sendEmail" class="btn btn-primary position-absolute" style="top: 400px; left:21%"> Send
            Email</a>
    </div> --}}
@endsection
