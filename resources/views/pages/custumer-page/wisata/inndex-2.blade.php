<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Rekomendasi Wisata</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wdth,wght@0,75..100,300..800;1,75..100,300..800&family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    @yield('css')
</head>

<body>

    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Navbar & Hero Start -->
    <div class="container-fluid position-relative p-0">
        <nav
            class="navbar d-flex navbar-expand-lg d-flex justify-content-between navbar-light px-4 px-lg-5 py-3 py-lg-0">
            <a href="{{ url('/') }}" class="navbar-brand p-0">
                {{-- <h1 class="text-primary"><i class="fas fa-hand-holding-water me-3"></i></h1> --}}
                <img src="{{ asset('assets/landing/img/logo.png') }}" alt="Logo">
            </a>
            @auth
                <form action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 my-2"> Logout</button>
                </form>
            @else
                <a href="{{ route('login') }}"
                    class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 my-2">Login</a>
            @endauth
            {{-- <a href="{{ route('login') }}"
                class="btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 my-2">Login</a> --}}
            {{-- <div class="collapse navbar-collapse  d-flex justify-content-end" >

                </div> --}}
        </nav>

        @yield('header')
    </div>
    <!-- Navbar & Hero End -->


    @yield('content')
    <!-- JavaScript Libraries -->
    @yield('js')

</body>

</html>
