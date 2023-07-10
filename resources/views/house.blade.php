@extends('layouts.main')

@section('container')
    <section id="house">
        <div class="container-fluid mb-4">
            <div class="row">
                <div class="col-lg-6">
                    @if ($house->main_image)
                        <div style="max-height: 416px; overflow:hidden" class="mt-3 mb-3">
                             <img src="{{ asset('storage/'.$house->main_image) }}" alt="{{ $house->nama_wisma }}" class="img-fluid">
                        </div>
                    @else
                    <img src="https://source.unsplash.com/740x416?property" class="mt-3 mb-3" alt="">
                    @endif
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6">
                            @if ($house->image1)
                                <div style="max-height: 360px; overflow:hidden" class="mt-3 mb-3">
                                    <img src="{{ asset('storage/'.$house->image1) }}" alt="{{ $house->nama_wisma }}" class="img-fluid">
                                </div>
                            @else
                            <img src="https://source.unsplash.com/360x200?property" class="mt-3 mb-3" alt="">
                            @endif
                        </div>
                        <div class="col-lg-6">
                            @if ($house->image2)
                                <div style="max-height: 360px; overflow:hidden" class="mt-3 mb-3">
                                    <img src="{{ asset('storage/'.$house->image2) }}" alt="{{ $house->nama_wisma }}" class="img-fluid">
                                </div>
                            @else
                            <img src="https://source.unsplash.com/360x200?property" class="mt-3 mb-3" alt="">
                            @endif
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            @if ($house->image3)
                                <div style="max-height: 360px; overflow:hidden" class="mt-3 mb-3">
                                    <img src="{{ asset('storage/'.$house->image3) }}" alt="{{ $house->nama_wisma }}" class="img-fluid">
                                </div>
                            @else
                            <img src="https://source.unsplash.com/360x200?property" class="mt-3 mb-3" alt="">
                            @endif
                        </div>
                        <div class="col-lg-6">
                            @if ($house->image4)
                                <div style="max-height: 360px; overflow:hidden" class="mt-3 mb-3">
                                    <img src="{{ asset('storage/'.$house->image4) }}" alt="{{ $house->nama_wisma }}" class="img-fluid">
                                </div>
                            @else
                            <img src="https://source.unsplash.com/360x200?property" class="mt-3 mb-3" alt="">
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mb-4 mt-0 px-3">
                <div class="col-lg-9">
                    <h2 class="fw-bold">{{ $house->nama_wisma }}</h3>
                    <small class="text-secondary">{{ $house->kota }}, {{ $house->provinsi }}</small>
                    <div class="d-flex flex-row text-secondary mt-2">
                        <div class="p-1 me-2">
                            <p><i class="fa-solid fa-bed"></i> {{ $house->jumlah_kasur }} Jumlah Kasur</p>
                        </div>
                        <div class="p-1 mx-2">
                            <p><i class="fa-solid fa-shower"></i> {{ $house->kamar_mandi }} Kamar Mandi</p>
                        </div>
                        <div class="p-1 mx-2">
                            <p><i class="fa-sharp fa-solid fa-house-chimney"></i> {{ $house->luas_parkir }} Luas Parkir m2</p>
                        </div>
                        <div class="p-1 mx-2">
                            <p><i class="fa-solid fa-ruler-combined"></i> {{ $house->luas_kamar }} Luas Kamar m2</p>
                        </div>
                    </div>
                    <div class="col-lg-8 py-3 ps-0">
                        <h5 class="fw-bold">Description</h5>
                        <small class="text-secondary">{!! $house->deskripsi !!}</small>
                    </div>
                    <hr>
                    <div class="row">
                        <h5 class="fw-bold">Location</h5>
                        <div class="col-lg-4">
                            <table>
                                <tr>
                                    <td class="pe-3 py-3"><small class="fw-bold fs-6">Address</small></td>
                                    <td class="px-3"><small>{{ $house->alamat }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3"><small class="fw-bold fs-6">Province</small></td>
                                    <td class="px-3"><small>{{ $house->provinsi }}</small></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-4">
                            <table>
                                <tr>
                                    <td class="pe-3 py-3"><small class="fw-bold fs-6">City</small></td>
                                    <td class="px-3"><small>{{ $house->kota }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3"><small class="fw-bold fs-6">Zip</small></td>
                                    <td class="px-3"><small>{{ $house->kode_pos }}</small></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-4">
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <h5 class="fw-bold mb-3">Property Spesification</h5>
                        <div class="col-lg-4">
                            <table>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">ID</small></td>
                                    <td class="px-3"><small>{{ $house->id }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Harga</small></td>
                                    <td class="px-3"><small>Rp. {{ $house->harga }} M</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Luas Parkir m2</small></td>
                                    <td class="px-3"><small>{{ $house->luas_parkir }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Luas Kamar m2</small></td>
                                    <td class="px-3"><small>{{ $house->luas_kamar}}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Jumlah Kasur</small></td>
                                    <td class="px-3"><small>{{ $house->jumlah_kasur }}</small></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-4">
                            <table>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Kamar Mandi</small></td>
                                    <td class="px-3"><small>{{ $house->kamar_mandi }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Sertifikat</small></td>
                                    <td class="px-3"><small>{{ $house->sertifikat }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Lantai</small></td>
                                    <td class="px-3"><small>{{ $house->lantai }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Daya Tampung Tamu</small></td>
                                    <td class="px-3"><small>{{ $house->daya_tampung_tamu }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Interior</small></td>
                                    <td class="px-3"><small>{{ $house->interior }}</small></td>
                                </tr>
                            </table>
                        </div>
                        <div class="col-lg-4">
                            <table>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Tahun Bangunan</small></td>
                                    <td class="px-3"><small>{{ $house->tahun_dibangun }}</small></td>
                                </tr>
                                <tr>
                                    <td class="pe-3 py-2"><small class="fw-bold fs-6">Kondisi Bangunan</small></td>
                                    <td class="px-3"><small>{{ $house->kondisi_bangunan }}</small></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <hr>
                </div>
   
            </div>
        </div>
    </section>
@endsection
