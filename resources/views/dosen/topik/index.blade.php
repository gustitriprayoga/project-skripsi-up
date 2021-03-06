<!-- Main content -->
@extends('layouts.dsnmain')
@section('content')
    @if (session()->has('success'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <i data-feather="check"></i>
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    @forelse ($topiks as $topik)

        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Menunggu Response dari Anda :)</h3>
                </div>
                <!-- ./card-header -->
                <div class="card-body">
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Judul Topik</th>
                                <th>Kategori Topik</th>
                                <th>Nama Mahasiswa</th>
                                <th>Action</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr data-widget="expandable-table" aria-expanded="false">
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $topik->title }}</td>
                                <td>{{ $topik->kategori->name }}</td>
                                <td>{{ $topik->mahasiswa->user->name }}</td>
                                <td>
                                    <a href="{{ url('/dosen/topik/' . $topik->id) }}" class="badge bg-primary p-2">
                                        <i class="fas fa-eye fa-lg"></i>
                                    </a>

                                    <form action="{{ url('/dosen/topik/' . $topik->id) }}" method="POST"
                                        class="d-inline" id="form-confirm">
                                        @method('put')
                                        @csrf
                                        <input type="hidden" id="status" name="status">
                                        <input type="hidden" id="contact" name="contact"
                                            value="{{ $topik->mahasiswa->user->contact }}">
                                        <input type="hidden" id="email" name="email"
                                            value="{{ $topik->mahasiswa->user->email }}">

                                        <button class="badge bg-warning border-0 p-2" id="btnTerima" type="submit"
                                            onclick="return confirm('Apakah anda yakin ingin menerima Topik?')">
                                            <i class="fas fa-check fa-lg"></i>
                                        </button>

                                        <button class="badge bg-danger border-0 p-2" id="btnTolak" type="submit"
                                            onclick="return confirm('Apakah anda yakin ingin menolak Topik?')">
                                            <i class="fas fa-minus-circle fa-lg"></i>
                                        </button>
                                    </form>


                                </td>
                            </tr>
                            <tr class="expandable-body d-none">
                                <td colspan="6">
                                    <p style="display: none;">
                                        {!! $topik->comment !!}
                                    </p>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>

    @empty

        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">Belum ada Topik yang harus anda cek untuk saat ini</h3>
                </div>
                <!-- ./card-header -->
                <div class="card-body">
                    <img src="/img/dont.png"
                        style="width:200px" alt="">
                </div>
            </div>
        </div>

    @endforelse


@endsection
