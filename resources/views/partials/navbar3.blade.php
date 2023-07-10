<section class="" style="margin-top: -30px">
    <div class="container-fluid px-5">
        <div class="row justify-content-between">
            <div class="col">
                <a class="navbar-brand fs-3" href="index.html">PANDAMA <span class="fs-5">Guesthouse</span></a>
            </div>
            <div class="col d-flex justify-content-end">
              <div class="social-media">
                <p class="mb-0 d-flex">
                  <a href="https://www.instagram.com/elogion_wah/" class="d-flex align-items-center justify-content-center"><span style="color: black"><i class="bi bi-instagram"></i></span></a>
                  <a href="https://www.youtube.com/channel/UCrhuQ2wCmgnKgA3TyP6hrtQ" class="d-flex align-items-center justify-content-center"><span style="color: black"><i class="bi bi-youtube"></i></span></a>
                  <a href="mailto:navivan3112@gmail.com" class="d-flex align-items-center justify-content-center"><span style="color: black"><i class="bi bi-envelope-fill"></i></span></a>
                </p>
              </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg ftco_navbar ftco-navbar-light" id="ftco-navbar" style="margin-top: -15px">
    <div class="container-fluid px-5">
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item {{ ($title === "Home") ? 'active' : '' }}"><a href="/" class="nav-link fw-bold" style="font-size: 12px">Home</a></li>
            <li class="nav-item {{ ($title === "Disewakan") ? 'active' : '' }}"><a href="/jual" class="nav-link fw-bold" style="font-size: 12px">Disewakanl</a></li>
            <li class="nav-item {{ ($title === "Masih Disewakan") ? 'active' : '' }}"><a href="/sewa" class="nav-link fw-bold" style="font-size: 12px">Masih Disewakan</a></li>
            <li class="nav-item {{ ($title === "Decision Support Systems") ? 'active' : '' }}"><a href="/spk" class="nav-link fw-bold" style="font-size: 12px">SPK</a></li>
            <li class="nav-item {{ ($title === "About") ? 'active' : '' }}"><a href="/about" class="nav-link fw-bold" style="font-size: 12px">About</a></li>
            <li class="nav-item {{ ($title === "Contact") ? 'active' : '' }}"><a href="/contact" class="nav-link fw-bold" style="font-size: 12px">Contact</a></li>
            <li class="nav-item {{ ($title === "All Posts") ? 'active' : '' }}"><a href="/artikel" class="nav-link fw-bold" style="font-size: 12px">Artikel</a></li>
        </ul>
      </div>
      <div class="collapse navbar-collapse" style="z-index: 9999">
        <ul class="navbar-nav ml-auto">
          @auth
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle fw-bold" style="font-size: 12px" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="bi bi-person-circle"></i> {{ auth()->user()->name }}</a>
              <div class="dropdown-menu rounded-0" aria-labelledby="dropdown04">
                @if (auth()->user()->role_id === 1)
                  <a class="dropdown-item" style="font-size: 12px" href="/dashboard"><i class="bi bi-card-list"></i> DASHBOARD</a>
                @else
                  <a class="dropdown-item" style="font-size: 12px" href="/user/dashboard/houses"><i class="bi bi-card-list"></i> DASHBOARD</a>
                @endif
                <a>
                  <form action="/logout" method="POST">
                    @csrf
                    <button type="submit" class="dropdown-item" style="font-size: 12px"><i class="fa-solid fa-right-from-bracket"></i> LOGOUT</button>
                  </form>
                </a>
              </div>
            </li>
          @else
          <li class="nav-item"><a href="/login" class="nav-link fw-bold" style="font-size: 12px"><i class="fa-solid fa-right-to-bracket"></i> LOGIN</a></li>
          @endauth
        </ul>
      </div>
    </div>
  </div>
  </nav>
<!-- END nav -->

</section>