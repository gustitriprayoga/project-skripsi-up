<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PROJECT SKRIPSI | Dashboard</title>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
        <!-- link css bootstrap -->
     <!-- <link rel="stylesheet" href="{{ asset('/css/cover-mhs.css') }}">
     <link rel="stylesheet" href="{{ asset('/css/style.css') }}"> -->



    @include('layouts.style')
</head>

<body class="hold-transition sidebar-mini layout-fixed;
   ">
    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
            <img class="animation__shake" src="{{ asset('/img/universitas-logo_1.png') }}" alt="brand" height="60" width="60">
        </div>

        <!-- Navbar -->
        @include('layouts.header')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="{{ url('/mahasiswa/dashboard') }}" class="brand-link">
                <img src="{{ asset('/img/universitas-logo_1.png') }}" alt="brand" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">PROJECT SKRIPSI</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{ asset('/img/user.png') }}" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#">


                            <p>{{ Auth::user()->name }}</p>



                        </a>
                    </div>
                </div>


                <!-- Sidebar Menu -->
                <nav class="mt-2 background-color: black;">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a href="{{ url('/mahasiswa/dashboard') }}"
                                class="nav-link {{ Request::is('mahasiswa/dashboard') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Dashboard
                                </p>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ url('/mahasiswa/topik') }}"
                                class="nav-link {{ Request::is('mahasiswa/topik') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    PENGAJUAN
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/mahasiswa/skripsi') }}"
                                class="nav-link {{ Request::is('mahasiswa/skripsi') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-book-reader"></i>
                                <p>
                                    SKRIPSI
                                </p>
                            </a>
                        {{-- </li>
                        <li class="nav-item">
                            <a href="{{ url('/mahasiswa/bimbingan') }}"
                                class="nav-link {{ Request::is('mahasiswa/bimbingan') ? 'active' : '' }}">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Bimbingan
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ url('/mahasiswa/jadwal') }}"
                                class="nav-link {{ Request::is('mahasiswa/jadwal') ? 'active' : '' }}">
                                <i class="nav-icon far fa-calendar-alt"></i>
                                <p>
                                    Jadwal
                                </p>
                            </a>
                        </li> --}}


                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->

        <div class="content-wrapper" style="background-color: grey;">

            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            {{-- <h1 class="m-0">Dashboard</h1> --}}
                        </div>
                        <!-- /.col breadcrubm-->
                        {{-- <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Dashboard v1</li>
                            </ol>
                        </div> --}}
                        <!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <main class=" px-md-3">
                @yield('content')
                <!-- /.content -->
            </main>
        </div>
        <!-- /.content-wrapper -->

        <footer class="main-footer rounded-top" style="background-color: #343a40;">
            <strong>Support &hearts; by <a href="https://universitaspahlawan.ac.id/">Universitas Pahlawan</a>.</strong>
            Thank You.
            <div class="float-right d-none d-sm-inline-block">
                <b>Release</b> 2021-2022
            </div>
        </footer>

        <!-- Control Sidebar -->
        {{-- <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside> --}}
        <!-- /.control-sidebar -->
    </div>
    <!-- ./wrapper -->

    @include('layouts.script')
</body>

</html>
