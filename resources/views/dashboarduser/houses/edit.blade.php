@extends('dashboarduser.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Guesthouse</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/user/dashboard/houses/{{ $house->slug }}" method="POST" class="mb-5" enctype="multipart/form-data">
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
              <div class="col-lg-3">
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
          const image = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection@extends('dashboarduser.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Guesthouse</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/user/dashboard/houses/{{ $house->slug }}" method="POST" class="mb-5" enctype="multipart/form-data">
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
              <div class="col-lg-3">
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
          const image = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection@extends('dashboarduser.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Add Guesthouse</h1>
    </div>
 
    <div class="col-lg-8">
        <form action="/user/dashboard/houses/{{ $house->slug }}" method="POST" class="mb-5" enctype="multipart/form-data">
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
                <label for="luas_parkir" class="form-label">Luas Parkir</label>
                <input type="text" class="form-control rounded-1 @error('luas_parkir') is-invalid @enderror" id="luas_parkir" name="luas_parkir" required autofocus value="{{ old('luas_parkir', $house->luas_parkir) }}">
                @error('luas_parkir')
                    <div class="invalid-feedback">
                      {{ $message }}
                    </div>
                @enderror
              </div>
              <div class="col-lg-3 mb-3">
                <label for="luas_kamar" class="form-label">Luas Kamar</label>
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
              <div class="col-lg-3">
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
          const image = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFReader) {
            imgPreview.src = oFReader.target.result;
          }

        }
    </script>
@endsection