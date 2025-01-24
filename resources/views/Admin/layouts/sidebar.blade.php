<!-- [ Sidebar Menu ] start -->
<nav class="pc-sidebar">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="/" class="b-brand text-primary">
                <!-- ========   Change your logo from here   ============ -->
                <img src="{{ asset('AdminTemplate/assets/images/logo-dark.svg') }}" class="img-fluid " alt="logo" />
                <span class="badge bg-light-success rounded-pill ms-2 theme-version">v9.4.1</span>
            </a>
        </div>
        <div class="navbar-content">

            <ul class="pc-navbar">
                @include('Admin/layouts/menu-list')
            </ul>
        </div>
    </div>
</nav>
<!-- [ Sidebar Menu ] end -->
