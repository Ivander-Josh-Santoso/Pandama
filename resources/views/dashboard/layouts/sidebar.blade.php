<nav id="sidebarMenu" style="margin-top: -5px" class="col-md-3 col-lg-2 d-md-block bg-dark sidebar collapse">
    <div class="position-sticky pt-3 sidebar-sticky">
      <ul class="nav flex-column">
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard')? 'active' : '' }}" aria-current="page" href="/dashboard">
            <span data-feather="home" class="align-text-bottom"></span>
            Dashboard
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/houses*')? 'active' : '' }}" href="/dashboard/houses">
            <span data-feather="file" class="align-text-bottom"></span>
            Guesthouses
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/posts*')? 'active' : '' }}" href="/dashboard/posts">
            <span data-feather="file" class="align-text-bottom"></span>
            Articles
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/users*')? 'active' : '' }}" href="/dashboard/users">
            <span data-feather="file" class="align-text-bottom"></span>
            Users
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link {{ Request::is('dashboard/contacts*')? 'active' : '' }}" href="/dashboard/contacts">
            <span data-feather="file" class="align-text-bottom"></span>
            Contacts
          </a>
        </li>
      </ul>

  
    </div>
  </nav>