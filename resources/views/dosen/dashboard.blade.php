@extends('layouts.dsnmain')
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
        <div class="card d-inline-block col-10 shadow-lg">
            <div class="card-header rounded-bottom bg-gradient-blue text-bold text-uppercase">Selamat Datang || {{ Auth::user()->name }} </div>
            <div class="card-body">
                
                
                <p>
                    Halaman Dashboard Dosen
                </p>
                <section class="py-5 overflow-hidden bg-gradient-dark">
                    <div class="container py-5">
                        <div class="row align-items-center">
                        <div class="position-relative col-12 col-lg-6 order-last order-lg-first mt-5 mt-lg-0">
                            <img class="img-fluid position-relative mx-auto rounded w-100" style="z-index:10" src="{{ asset('/img/universitas-logo_1.png') }}" alt="">
                            
                        </div>
                        <div class="col-12 col-lg-6 py-5 ">
                            <div class="row">
                            <div class="col-12 col-lg-8 mx-auto">
                                <span class="badge rounded-pill bg-primary">MENU</span>
                                <h2 class="mt-3 mb-5 fs-1 fw-bold">FITUR</h2>
                                <div class="d-flex mb-4 pb-1">
                                <span class="me-4 text-primary">
                                    <svg width="32" height="32" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"></path>
                                    </svg>
                                </span>
                                <div>
                                    <h5>DAFTAR PENGAJUAN</h5>
                                    <p class="mb-0 text-muted lh-lg">Daftar Pengajuan Yang Sudah Di Input Mahasiswa/i</p>
                                    <a class="text-uppercase btn btn-primary" href="{{ url('/dosen/topik/') }}">Daftar Pengajuan</a>
                                </div> 
                                </div>
                                <div class="d-flex mb-4 pb-1">
                                <span class="me-4 text-primary">
                                    <svg width="32" height="32" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"></path>
                                    </svg>
                                </span>
                                <div>
                                    <h5>DAFTAR SKRIPSI</h5>
                                    <p class="mb-0 text-muted lh-lg">Daftar Skirpsi Yang Sudah Di Input Mahasiswa/i </p>
                                    <a class="text-uppercase btn btn-primary" href="">Daftar kripsi</a>
                                </div>
                                </div>
                                <div class="d-flex">
                                <span class="me-4 text-primary">
                                    <svg width="32" height="32" fill="none" stroke="currentColor" viewbox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 7a2 2 0 012 2m4 0a6 6 0 01-7.743 5.743L11 17H9v2H7v2H4a1 1 0 01-1-1v-2.586a1 1 0 01.293-.707l5.964-5.964A6 6 0 1121 9z"></path>
                                    </svg>
                                </span>
                                <div>
                                    <h5>SIDANG</h5>
                                    <p class="mb-0 text-muted lh-lg">Jadwal Sidang Yang Sudah DI Acc Oleh Admin</p>
                                    <a class="text-uppercase btn btn-primary" href="">Daftar Sidang</a>
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    {{-- <img src="/img/sticker1.png" class="d-inline-block ms-5 position-absolute" style="width: 250px; top:130px" alt=""> --}}


    {{-- <div>
        <a href="/mahasiswa/sendEmail" class="btn btn-primary position-absolute" style="top: 400px; left:21%"> Send
            Email</a>
    </div> --}}
@endsection
