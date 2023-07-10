@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Listing</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/dashboard/houses/{{ $house->slug }}" method="POST" class="mb-5" enctype="multipart/form-data">
            @method('put')
            @csrf
            <div class="mb-3">
              <label for="nama_wisma" class="form-label">Nama Wisma</label>
              <input type="text" class="form-control rounded-1 @error('nama_wisma') is-invalid @enderror" id="nama_wisma" name="nama_wisma" required autofocus value="{{ old('nama_wisma', $house->nama_wisma) }}">
              @error('nama_wisma')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div> 
              @enderror
            </div>
            <div class="mb-3">
              <label for="slug" class="form-label">Slug</label>
              <input type="text" class="form-control rounded-1 @error('slug') is-invalid @enderror" id="slug" name="slug" required value="{{ old('slug', $house->slug) }}">
              @error('slug')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="pemilik" class="form-label">Pemilik</label>
              <select class="form-select rounded-1" name="user_id">
                @foreach ($users as $user)
                  @if (old('user_id', $house->user_id) == $user->id)
                    <option value="{{ $user->id }}" selected>{{ $user->name }}</option>
                  @else 
                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                  @endif
                @endforeach  
              </select>
            </div>
            <div class="mb-3">
              <label for="status" class="form-label">Status</label>
              <select class="form-select" aria-label="Default select example" name="status" id="status">
                <option value="1">Disewakan</option>
                <option value="0">Masih Disewakan</option>
              </select>
              @error('status')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="alamat" class="form-label">Alamat</label>
              <input type="text" class="form-control rounded-1 @error('alamat') is-invalid @enderror" id="alamat" name="alamat" required autofocus value="{{ old('alamat', $house->alamat) }}">
              @error('alamat')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="row mb-3">
              <div class="col-lg-4">
                <label for="kota" class="form-label">Kota</label>
                <input type="text" class="form-control rounded-1 @error('kota') is-invalid @enderror" id="kota" name="kota" required autofocus value="{{ old('kota', $house->kota) }}">
                @error('kota')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="provinsi" class="form-label">Provinsi</label>
                <input type="text" class="form-control rounded-1 @error('provinsi') is-invalid @enderror" id="provinsi" name="provinsi" required autofocus value="{{ old('provinsi', $house->provinsi) }}">
                @error('provinsi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="kode_pos" class="form-label">Kode Pos</label>
                <input type="text" class="form-control rounded-1 @error('kode_pos') is-invalid @enderror" id="kode_pos" name="kode_pos" required autofocus value="{{ old('kode_pos', $house->kode_pos) }}">
                @error('kode_pos')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <div class="mb-3">
              <label for="harga" class="form-label">Harga</label>
              <input type="text" class="form-control rounded-1 @error('harga') is-invalid @enderror" id="harga" name="harga" required autofocus value="{{ old('harga', $house->harga) }}">
              @error('harga')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="deskripsi" class="form-label">Deskripsi</label>
              @error('deskripsi')
                  <p class="text-danger">
                    {{ $message }}
                  </p>
              @enderror
              <input id="deskripsi" type="hidden" name="deskripsi" value="{{ old('deskripsi', $house->deskripsi) }}">
              <trix-editor input="deskripsi" class="rounded-1"></trix-editor>
            </div>
            <div class="row mb-3">
              <div class="col-lg-3">
                <label for="luas_parkir" class="form-label">Luas Parkir m2</label>
                <input type="text" class="form-control rounded-1 @error('luas_parkir') is-invalid @enderror" id="luas_parkir" name="luas_parkir" required autofocus value="{{ old('luas_parkir', $house->luas_parkir) }}">
                @error('luas_parkir')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="luas_kamar" class="form-label">Luas Kamar m2</label>
                <input type="text" class="form-control rounded-1 @error('luas_kamar') is-invalid @enderror" id="luas_kamar" name="luas_kamar" required autofocus value="{{ old('luas_kamar', $house->luas_kamar) }}">
                @error('luas_kamar')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="jumlah_kasur" class="form-label">Jumlah Kasur</label>
                <input type="text" class="form-control rounded-1 @error('jumlah_kasur') is-invalid @enderror" id="jumlah_kasur" name="jumlah_kasur" required autofocus value="{{ old('jumlah_kasur', $house->jumlah_kasur) }}">
                @error('jumlah_kasur')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="kamar_mandi" class="form-label">Kamar Mandi</label>
                <input type="text" class="form-control rounded-1 @error('kamar_mandi') is-invalid @enderror" id="kamar_mandi" name="kamar_mandi" required autofocus value="{{ old('kamar_mandi', $house->kamar_mandi) }}">
                @error('kamar_mandi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="sertifikat" class="form-label">Sertifikat</label>
                <input type="text" class="form-control rounded-1 @error('sertifikat') is-invalid @enderror" id="sertifikat" name="sertifikat" required autofocus value="{{ old('sertifikat', $house->sertifikat) }}">
                @error('sertifikat')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="lantai" class="form-label">Lantai</label>
                <input type="text" class="form-control rounded-1 @error('lantai') is-invalid @enderror" id="lantai" name="lantai" required autofocus value="{{ old('lantai', $house->lantai) }}">
                @error('lantai')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="daya_tampung_tamu" class="form-label">Daya Tampung Tamu</label>
                <input type="text" class="form-control rounded-1 @error('daya_tampung_tamu') is-invalid @enderror" id="daya_tampung_tamu" name="daya_tampung_tamu" required autofocus value="{{ old('daya_tampung_tamu', $house->daya_tampung_tamu) }}">
                @error('daya_tampung_tamu')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="interior" class="form-label">Interior</label>
                <input type="text" class="form-control rounded-1 @error('interior') is-invalid @enderror" id="interior" name="interior" required autofocus value="{{ old('interior', $house->interior) }}">
                @error('interior')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="tahun_dibangun" class="form-label">Tahun Dibangun</label>
                <input type="text" class="form-control rounded-1 @error('tahun_dibangun') is-invalid @enderror" id="tahun_dibangun" name="tahun_dibangun" required autofocus value="{{ old('tahun_dibangun', $house->tahun_dibangun) }}">
                @error('tahun_dibangun')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="kondisi_bangunan" class="form-label">Kondisi Bangunan</label>
                <select class="form-select" aria-label="Default select example" name="kondisi_bangunan" id="kondisi_bangunan">
                  <option value="1">Baru</option>
                  <option value="0">Lama</option>
                </select>
                @error('kondisi_bangunan')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="main_image" class="form-label">Main Image</label>
                <input type="hidden" name="oldmain_image" value="{{ $house->main_image }}" class="rounded-1">
                @if ($house->main_image)
                  <img src="{{ asset('storage/'.$house->main_image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('main_image') is-invalid @enderror" type="file" id="main_image" name="main_image" onchange="previewImage()">
                @error('main_image')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image1" class="form-label">Image 1</label>
                <input type="hidden" name="oldimage1" value="{{ $house->image1 }}" class="rounded-1">
                @if ($house->image1)
                  <img src="{{ asset('storage/'.$house->image1) }}" class="img-preview1 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview1 img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('image1') is-invalid @enderror" type="file" id="image1" name="image1" onchange="previewImage2()">
                @error('image1')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image2" class="form-label">Image 2</label>
                <input type="hidden" name="oldimage2" value="{{ $house->image2 }}" class="rounded-1">
                @if ($house->image2)
                  <img src="{{ asset('storage/'.$house->image2) }}" class="img-preview2 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview2 img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('image2') is-invalid @enderror" type="file" id="image2" name="image2" onchange="previewImage3()">
                @error('image2')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image3" class="form-label">Image 3</label>
                <input type="hidden" name="oldimage3" value="{{ $house->image3 }}" class="rounded-1">
                @if ($house->image3)
                  <img src="{{ asset('storage/'.$house->image3) }}" class="img-preview3 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview3 img-fluid mb-3 col-sm-5 d-block">
                @endif
                
                <input class="form-control rounded-1 @error('image3') is-invalid @enderror" type="file" id="image3" name="image3" onchange="previewImage4()">
                @error('image3')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image4" class="form-label">Image 4</label>
                <input type="hidden" name="oldimage4" value="{{ $house->image4 }}" class="rounded-4">
                @if ($house->image4)
                  <img src="{{ asset('storage/'.$house->image4) }}" class="img-preview4 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview4 img-fluid mb-3 col-sm-5 d-block">
                @endif
                
                <input class="form-control rounded-4 @error('image4') is-invalid @enderror" type="file" id="image4" name="image4" onchange="previewImage5()">
                @error('image4')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <button type="submit" class="btn btn-dark rounded-0 fw-medium">Edit Listing</button>
          </form>
    </div>

    <script>
        const title = document.querySelector('#nama_wisma');
        const slug = document.querySelector('#slug');

        title.addEventListener('change', function(){
            fetch('/dashboard/houses/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
        })

        function previewImage(){
          const image = document.querySelector('#main_image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage2(){
          const image = document.querySelector('#image1');
          const imgPreview = document.querySelector('.img-preview1');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage3(){
          const image = document.querySelector('#image2');
          const imgPreview = document.querySelector('.img-preview2');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage4(){
          const image = document.querySelector('#image3');
          const imgPreview = document.querySelector('.img-preview3');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage5(){
          const image = document.querySelector('#image4');
          const imgPreview = document.querySelector('.img-preview4');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Listing</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/dashboard/houses/{{ $house->slug }}" method="POST" class="mb-5" enctype="multipart/form-data">
            @method('put')
            @csrf
            <div class="mb-3">
              <label for="nama_wisma" class="form-label">Nama Wisma</label>
              <input type="text" class="form-control rounded-1 @error('nama_wisma') is-invalid @enderror" id="nama_wisma" name="nama_wisma" required autofocus value="{{ old('nama_wisma', $house->nama_wisma) }}">
              @error('nama_wisma')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div> 
              @enderror
            </div>
            <div class="mb-3">
              <label for="slug" class="form-label">Slug</label>
              <input type="text" class="form-control rounded-1 @error('slug') is-invalid @enderror" id="slug" name="slug" required value="{{ old('slug', $house->slug) }}">
              @error('slug')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="pemilik" class="form-label">Pemilik</label>
              <select class="form-select rounded-1" name="user_id">
                @foreach ($users as $user)
                  @if (old('user_id', $house->user_id) == $user->id)
                    <option value="{{ $user->id }}" selected>{{ $user->name }}</option>
                  @else 
                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                  @endif
                @endforeach  
              </select>
            </div>
            <div class="mb-3">
              <label for="status" class="form-label">Status</label>
              <select class="form-select" aria-label="Default select example" name="status" id="status">
                <option value="1">Disewakan</option>
                <option value="0">Masih Disewakan</option>
              </select>
              @error('status')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="alamat" class="form-label">Alamat</label>
              <input type="text" class="form-control rounded-1 @error('alamat') is-invalid @enderror" id="alamat" name="alamat" required autofocus value="{{ old('alamat', $house->alamat) }}">
              @error('alamat')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="row mb-3">
              <div class="col-lg-4">
                <label for="kota" class="form-label">Kota</label>
                <input type="text" class="form-control rounded-1 @error('kota') is-invalid @enderror" id="kota" name="kota" required autofocus value="{{ old('kota', $house->kota) }}">
                @error('kota')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="provinsi" class="form-label">Provinsi</label>
                <input type="text" class="form-control rounded-1 @error('provinsi') is-invalid @enderror" id="provinsi" name="provinsi" required autofocus value="{{ old('provinsi', $house->provinsi) }}">
                @error('provinsi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-4">
                <label for="kode_pos" class="form-label">Kode Pos</label>
                <input type="text" class="form-control rounded-1 @error('kode_pos') is-invalid @enderror" id="kode_pos" name="kode_pos" required autofocus value="{{ old('kode_pos', $house->kode_pos) }}">
                @error('kode_pos')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <div class="mb-3">
              <label for="harga" class="form-label">Harga</label>
              <input type="text" class="form-control rounded-1 @error('harga') is-invalid @enderror" id="harga" name="harga" required autofocus value="{{ old('harga', $house->harga) }}">
              @error('harga')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="deskripsi" class="form-label">Deskripsi</label>
              @error('deskripsi')
                  <p class="text-danger">
                    {{ $message }}
                  </p>
              @enderror
              <input id="deskripsi" type="hidden" name="deskripsi" value="{{ old('deskripsi', $house->deskripsi) }}">
              <trix-editor input="deskripsi" class="rounded-1"></trix-editor>
            </div>
            <div class="row mb-3">
              <div class="col-lg-3">
                <label for="luas_parkir" class="form-label">Luas Parkir m2</label>
                <input type="text" class="form-control rounded-1 @error('luas_parkir') is-invalid @enderror" id="luas_parkir" name="luas_parkir" required autofocus value="{{ old('luas_parkir', $house->luas_parkir) }}">
                @error('luas_parkir')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="luas_kamar" class="form-label">Luas Kamar m2</label>
                <input type="text" class="form-control rounded-1 @error('luas_kamar') is-invalid @enderror" id="luas_kamar" name="luas_kamar" required autofocus value="{{ old('luas_kamar', $house->luas_kamar) }}">
                @error('luas_kamar')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="jumlah_kasur" class="form-label">Jumlah Kasur</label>
                <input type="text" class="form-control rounded-1 @error('jumlah_kasur') is-invalid @enderror" id="jumlah_kasur" name="jumlah_kasur" required autofocus value="{{ old('jumlah_kasur', $house->jumlah_kasur) }}">
                @error('jumlah_kasur')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="kamar_mandi" class="form-label">Kamar Mandi</label>
                <input type="text" class="form-control rounded-1 @error('kamar_mandi') is-invalid @enderror" id="kamar_mandi" name="kamar_mandi" required autofocus value="{{ old('kamar_mandi', $house->kamar_mandi) }}">
                @error('kamar_mandi')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="sertifikat" class="form-label">Sertifikat</label>
                <input type="text" class="form-control rounded-1 @error('sertifikat') is-invalid @enderror" id="sertifikat" name="sertifikat" required autofocus value="{{ old('sertifikat', $house->sertifikat) }}">
                @error('sertifikat')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="lantai" class="form-label">Lantai</label>
                <input type="text" class="form-control rounded-1 @error('lantai') is-invalid @enderror" id="lantai" name="lantai" required autofocus value="{{ old('lantai', $house->lantai) }}">
                @error('lantai')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="daya_tampung_tamu" class="form-label">Daya Tampung Tamu</label>
                <input type="text" class="form-control rounded-1 @error('daya_tampung_tamu') is-invalid @enderror" id="daya_tampung_tamu" name="daya_tampung_tamu" required autofocus value="{{ old('daya_tampung_tamu', $house->daya_tampung_tamu) }}">
                @error('daya_tampung_tamu')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="interior" class="form-label">Interior</label>
                <input type="text" class="form-control rounded-1 @error('interior') is-invalid @enderror" id="interior" name="interior" required autofocus value="{{ old('interior', $house->interior) }}">
                @error('interior')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3">
                <label for="tahun_dibangun" class="form-label">Tahun Dibangun</label>
                <input type="text" class="form-control rounded-1 @error('tahun_dibangun') is-invalid @enderror" id="tahun_dibangun" name="tahun_dibangun" required autofocus value="{{ old('tahun_dibangun', $house->tahun_dibangun) }}">
                @error('tahun_dibangun')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="kondisi_bangunan" class="form-label">Kondisi Bangunan</label>
                <select class="form-select" aria-label="Default select example" name="kondisi_bangunan" id="kondisi_bangunan">
                  <option value="1">Baru</option>
                  <option value="0">Lama</option>
                </select>
                @error('kondisi_bangunan')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="main_image" class="form-label">Main Image</label>
                <input type="hidden" name="oldmain_image" value="{{ $house->main_image }}" class="rounded-1">
                @if ($house->main_image)
                  <img src="{{ asset('storage/'.$house->main_image) }}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('main_image') is-invalid @enderror" type="file" id="main_image" name="main_image" onchange="previewImage()">
                @error('main_image')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image1" class="form-label">Image 1</label>
                <input type="hidden" name="oldimage1" value="{{ $house->image1 }}" class="rounded-1">
                @if ($house->image1)
                  <img src="{{ asset('storage/'.$house->image1) }}" class="img-preview1 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview1 img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('image1') is-invalid @enderror" type="file" id="image1" name="image1" onchange="previewImage2()">
                @error('image1')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image2" class="form-label">Image 2</label>
                <input type="hidden" name="oldimage2" value="{{ $house->image2 }}" class="rounded-1">
                @if ($house->image2)
                  <img src="{{ asset('storage/'.$house->image2) }}" class="img-preview2 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview2 img-fluid mb-3 col-sm-5 d-block">
                @endif
                <input class="form-control rounded-1 @error('image2') is-invalid @enderror" type="file" id="image2" name="image2" onchange="previewImage3()">
                @error('image2')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image3" class="form-label">Image 3</label>
                <input type="hidden" name="oldimage3" value="{{ $house->image3 }}" class="rounded-1">
                @if ($house->image3)
                  <img src="{{ asset('storage/'.$house->image3) }}" class="img-preview3 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview3 img-fluid mb-3 col-sm-5 d-block">
                @endif
                
                <input class="form-control rounded-1 @error('image3') is-invalid @enderror" type="file" id="image3" name="image3" onchange="previewImage4()">
                @error('image3')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="mb-3">
                <label for="image4" class="form-label">Image 4</label>
                <input type="hidden" name="oldimage4" value="{{ $house->image4 }}" class="rounded-4">
                @if ($house->image4)
                  <img src="{{ asset('storage/'.$house->image4) }}" class="img-preview4 img-fluid mb-3 col-sm-5 d-block">
                @else
                  <img class="img-preview4 img-fluid mb-3 col-sm-5 d-block">
                @endif
                
                <input class="form-control rounded-4 @error('image4') is-invalid @enderror" type="file" id="image4" name="image4" onchange="previewImage5()">
                @error('image4')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
            </div>
            <button type="submit" class="btn btn-dark rounded-0 fw-medium">Edit Listing</button>
          </form>
    </div>

    <script>
        const title = document.querySelector('#nama_wisma');
        const slug = document.querySelector('#slug');

        title.addEventListener('change', function(){
            fetch('/dashboard/houses/checkSlug?title=' + title.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
        })

        function previewImage(){
          const image = document.querySelector('#main_image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage2(){
          const image = document.querySelector('#image1');
          const imgPreview = document.querySelector('.img-preview1');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage3(){
          const image = document.querySelector('#image2');
          const imgPreview = document.querySelector('.img-preview2');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage4(){
          const image = document.querySelector('#image3');
          const imgPreview = document.querySelector('.img-preview3');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }

        function previewImage5(){
          const image = document.querySelector('#image4');
          const imgPreview = document.querySelector('.img-preview4');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection