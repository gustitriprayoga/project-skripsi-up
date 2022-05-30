<!doctype html>
<html lang="en" class="h-100">

<head>

    <title>PROJECT SKRIPSI</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">



    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="{{ asset('/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/cover.css') }}">


</head>

<body class="d-flex h-100 text-center text-white bg-dark">

    <div class=" container-fluid d-flex p-3  flex-column rounded">
        <header class="mb-auto">
            <div>
                <a href="{{ url('/home') }}">
                    <img src="{{ asset('/img/universitas-logo_1.png') }}" alt="" class="float-md-start brand"
                        style="width: 50px; margin-right:20px">

                    <h3 class="float-md-start my-2">PROJECT SKRIPSI</h3>
                </a>
                <nav class="nav nav-masthead justify-content-center float-md-end my-2">
                    <a class="nav-link active" aria-current="page" href="{{ url('/home') }}">Home</a>
                    <a class="nav-link rounded" href="{{ url('/about') }}">About</a>

                    @auth


                        <?php
                    if(Auth::user()->role_id == 1){
                        $ad = DB::table('admins')->where('user_id', Auth::id() )->first();
                        ?>
                        <a class="nav-link" href="{{ url('/admin/dashboard/') }}">Dashboard</a>
                        <?php 
                    }
                    else if(Auth::user()->role_id == 2){
                        $dsn = DB::table('dosens')->where('user_id', Auth::id() )->first();
                        ?>
                        <a class="nav-link" href="{{ url('/dosen/dashboard/') }}">Dashboard</a>
                        <?php 
                     }
                    else if(Auth::user()->role_id == 3){
                        $mhs = DB::table('mahasiswas')->where('user_id', Auth::id() )->first();
                        ?>
                        <a class="nav-link" href="{{ url('/mahasiswa/dashboard/') }}">Dashboard</a>
                        <?php 
                    }
                    ?>






                        <a class="nav-link" href="{{ route('logout') }}"
                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    @else
                        <a href="{{ route('login') }}" class="nav-link rounded">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="nav-link rounded">Register</a>
                        @endif
                    @endauth

                </nav>
            </div>
        </header>

    <div>
        <main>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h1>E-SKRIPSI</h1>
            <p class="lead">TEKNIK INFORMATIKA
            </p>
             <div>
                 
             </div>
            @auth
                <p class="lead">


                    @if (Auth::user()->role_id == 1)

                        <a class="btn btn-lg btn-secondary fw-bold border-white bg-white"
                            href="/admin/dashboard">Dashboard</a>


                    @elseif(Auth::user()->role_id == 2)
                        <a class="btn btn-lg btn-secondary fw-bold border-white bg-white"
                            href="/dosen/dashboard">Dashboard</a>


                    @elseif(Auth::user()->role_id == 3)

                        <a class="btn btn-lg btn-secondary fw-bold border-white bg-white"
                            href="/mahasiswa/dashboard">Dashboard</a>

                    @endif


                </p>

            @else
            <div class="d-flex justify-content-center">
                <p class="lead mx-2">
                    <a href="{{ route('login') }}"
                        class="btn btn-lg btn-secondary fw-bold border-white bg-white">Masuk</a>
                </p>
                <p class="lead mx-2">
                    <a href="{{ route('register') }}"
                        class="btn btn-lg btn-secondary fw-bold border-white bg-white"  type="button">Daftar</a>
                </p>
            </div>
            @endauth
        </main>
    </div>

        <footer class="mt-auto text-white-50">
            <p> PROJECT SKRIPSI @Gusti 2021 - 2022</p>
        </footer>
    </div>



</body>

</html>
