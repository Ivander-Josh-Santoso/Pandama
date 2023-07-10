@extends('layouts.main')

@section('container')
    <section id="premium">
        <div class="container-fluid py-5 mt-3 px-5">
            <h2 class="text-center fw-bolder">Decision Support Systems</h2>
            <p class="text-center">Pandama will Help you choose the best guesthous for you, Master!</p>
            <form action="/spk/alternatives" method="POST">
                @csrf
                <h4 class="fw-bolder">Add Alternatives</h4>
                <div class="flex-row d-flex justify-content-between">
                    <div class="mb-3 col-lg-8 d-flex">
                        <select class="form-select rounded-1" name="house">
                          @foreach ($houses as $house)
                              <option value="{{ $house}}" selected> 
                                @if ($house->status == 1)
                                    Disewakan
                                @else
                                    Masih Disewakan                    
                                @endif
                                 - {{ $house->nama_wisma }} - Price: {{ $house->harga }}M</option>
                          @endforeach  
                        </select>
                    </div>
                    <div class="mb-3 d-flex">
                        <button type="submit" class="btn btn-dark rounded-0" style="background-color: rgb(34, 139, 34)">ADD</button>
                    </div>
                </div>
            </form>
            @if (session()->has('success'))
                <div class="alert alert-success col-lg-8" role="alert">
                    {{ session('success') }}
                </div>
            @endif 
           <div class="table-responsive">
            <table class="table table-striped">
                <tr>
                    <th>No</th>
                    <th>ID</th>
                    <th>ID Alt</th>
                    <th>Nama Wisma</th>
                    <th>Harga</th>
                    <th>Luas Parkir m2</th>
                    <th>Luas Kamar m2</th>
                    <th>Jumlah Kasur</th>
                    <th>Kamar Mandi</th>
                    <th>Daya Tampung Tamu</th>
                    {{-- <th>TD</th> --}}
                    <th class="text-center">View</th>
                    <th class="text-center">Action</th>
                </tr>
                @foreach ($alternatives as $alternative)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $alternative->id_wisma }}</td>
                    <td>{{ $alternative->alternative }}</td>
                    <td>{{ $alternative->nama_wisma }}</td>
                    <td>{{ $alternative->harga }}</td>
                    <td>{{ $alternative->luas_parkir }}</td>
                    <td>{{ $alternative->luas_kamar }}</td>
                    <td>{{ $alternative->jumlah_kasur }}</td>
                    <td>{{ $alternative->kamar_mandi }}</td>
                    <td>{{ $alternative->daya_tampung_tamu }}</td>
                    <td class="text-center"><a href="/houses/{{ $alternative->slug }}" class="badge bg-info text-center"><i class="bi bi-eye"></i></a></td>
                    {{-- <td>{{ $alternative->tahun_dibangun }}</td> --}}
                    <td class="text-center">
                        <form action="/spk/alternatives/{{ $alternative->id }}" method="POST" class="d-inline">
                            @method('delete')
                            @csrf
                            <button class="badge bg-danger border-0" onclick="return confirm('Are you sure, Master?')"><i class="bi bi-x-circle"></i></button>
                          </form>
                    </td>
                </tr> 
                @endforeach
            </table>
           </div>
            <div class="d-flex justify-content-between">
                <a href="/" class="btn btn-danger col-lg-3 rounded-0 fw-bold">CANCEL</a>
                <a href="/spk/saw/kriteria" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: rgb(34, 139, 34)">LAKUKAN SAW</a>
                {{-- <a href="/spk/matriks" class="btn btn-dark col-lg-3 rounded-0 fw-bold" style="background-color: rgb(34, 139, 34)">LAKUKAN AHP</a> --}}
            </div>
        </div>
    </section>
@endsection