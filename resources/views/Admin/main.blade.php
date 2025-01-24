<!DOCTYPE html>
<html lang="en">
<!-- [Head] start -->

<head>
    @include('Admin/layouts/head-page-meta')
    @include('Admin/layouts/head-css')
</head>
<!-- [Head] end -->
<!-- [Body] Start -->

<body>
    @include('Admin/layouts/layout-vertical')

    <!-- [ Main Content ] start -->
    <div class="pc-container">
        <div class="pc-content">

            <!-- [ Main Content ] start -->
            @yield('content')
            <!-- [ Main Content ] end -->

        </div>
    </div>
    <!-- [ Main Content ] end -->
    @include('Admin/layouts/footer-block')
    @include('Admin/layouts/footer-js')
    {{-- @include('Admin/layouts/customizer') --}}
</body>
<!-- [Body] end -->

</html>
