@extends('layouts.authmain')
@section('content')
    <div class="login-page bg-grey" style="height: 90%; background-color: grey;" >
        <img src="{{ asset('/img/universitas-logo_1.png') }}" alt="back" class="brand-image img-circle elevation-1">
        <div class="login-box">
            <div class="login-logo">
                <a href="adminlte/index2.html"><b>SKRIPSI ONLINE</b> UNIVERSITAS PAHLAWAN</a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body rounded-lg">
                    <p class="login-box-msg">LOGIN UNTUK MELAKUKAN </p>

                    <form method="POST" action="{{ route('login') }}">
                        @csrf
                        <div class="input-group mb-3">
                            <input id="email" type="email" class="form-control @error('email') is-invalid @enderror"
                                name="email" value="{{ old('email') }}" placeholder="Enter Email" required
                                autocomplete="email" autofocus>
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-envelope"></span>
                                </div>
                            </div>
                            @error('email')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>


                        <div class="input-group mb-3">
                            <input id="password" type="password"
                                class="form-control @error('password') is-invalid @enderror" name="password"
                                placeholder="Enter Password" required autocomplete="current-password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="row">

                            <!-- /.col -->
                            <div class="col-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Login') }}
                                </button>
                            </div>
                            <!-- /.col -->
                        </div>
                    </form>

                    <p class="mb-0">
                        <a class="nav-link text-center btn-app font-weight-bold" href="{{ route('register') }}">Buat Akun Baru</a>
                    </p>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
        <!-- /.login-box -->
    </div>
@endsection
