@extends('pages.custumer-page.wisata.inndex-2')
@section('css')
    <link href="{{ asset('/assets/landing/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/assets/landing/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('/assets/landing/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="{{ asset('/assets/landing/css/style.css') }}" rel="stylesheet">
@endsection
@section('header')
    <!-- Carousel Start -->
    <div class="carousel-header">
        <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
                <li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <img src="{{ asset('assets/landing/img/bg2.jpg') }}" class="img-fluid w-100" alt="Image">
                    <div class="carousel-caption-1">
                        <div class="carousel-caption-1-content" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase fw-bold mb-4 fadeInLeft animated"
                                data-animation="fadeInLeft" data-delay="1s" style="animation-delay: 1s;"
                                style="letter-spacing: 3px;">Magic of West Sumatra</h4>
                            <h1 class="display-2 text-capitalize text-white mb-4 fadeInLeft animated"
                                data-animation="fadeInLeft" data-delay="1.3s" style="animation-delay: 1.3s;">
                                Surga Wisata di Tanah Minang</h1>
                            <p class="mb-5 fs-5 text-white fadeInLeft animated" data-animation="fadeInLeft"
                                data-delay="1.5s" style="animation-delay: 1.5s;">Sumatera Barat menyuguhkan
                                keindahan alam yang
                                memukau dan kekayaan budaya yang mendalam. Dengan pemandangan alam yang menawan dan
                                tradisi yang kaya,
                                provinsi ini menawarkan pengalaman yang tak terlupakan.
                            </p>
                            <div class="carousel-caption-1-content-btn fadeInLeft animated" data-animation="fadeInLeft"
                                data-delay="1.7s" style="animation-delay: 1.7s;">
                                <a class="btn btn-primary rounded-pill flex-shrink-0 py-3 px-5 me-2"
                                    href="{{ route('spk/destinasi/rekomendasi.create') }}">Cari Rekomendasi</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="{{ asset('assets/landing/img/beach.jpg') }}" class="img-fluid w-100" alt="Image">
                    <div class="carousel-caption-2">
                        <div class="carousel-caption-2-content" style="max-width: 900px;">
                            <h4 class="text-white text-uppercase fw-bold mb-4 fadeInRight animated"
                                data-animation="fadeInRight" data-delay="1s" style="animation-delay: 1s;"
                                style="letter-spacing: 3px;">Magic of West Sumatra</h4>
                            <h1 class="display-2 text-capitalize text-white mb-4 fadeInRight animated"
                                data-animation="fadeInRight" data-delay="1.3s" style="animation-delay: 1.3s;">
                                Surga Wisata di Tanah Minang</h1>
                            <p class="mb-5 fs-5 text-white fadeInRight animated" data-animation="fadeInRight"
                                data-delay="1.5s" style="animation-delay: 1.5s;">Sumatera Barat menyuguhkan
                                keindahan alam yang
                                memukau dan kekayaan budaya yang mendalam. Dengan pemandangan alam yang menawan dan
                                tradisi yang kaya,
                                provinsi ini menawarkan pengalaman yang tak terlupakan.
                            </p>
                            <div class="carousel-caption-2-content-btn fadeInRight animated" data-animation="fadeInRight"
                                data-delay="1.7s" style="animation-delay: 1.7s;">
                                <a class="btn btn-primary rounded-pill flex-shrink-0 py-3 px-5 me-2" href="{{ route('spk/destinasi/rekomendasi.create') }}">Cari
                                    Rekomendasi</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                <span class="carousel-control-prev-icon btn btn-primary fadeInLeft animated" aria-hidden="true"
                    data-animation="fadeInLeft" data-delay="1.1s" style="animation-delay: 1.3s;"> <i
                        class="fa fa-angle-left fa-3x"></i></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                <span class="carousel-control-next-icon btn btn-primary fadeInRight animated" aria-hidden="true"
                    data-animation="fadeInLeft" data-delay="1.1s" style="animation-delay: 1.3s;"><i
                        class="fa fa-angle-right fa-3x"></i></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
@endsection

@section('content')
    <!-- Blog Start -->
    <div class="container-fluid blog pb-5 mt-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-uppercase text-primary">Wisata Sumatera Barat</h4>
                <h1 class="display-3 text-capitalize mb-3">Temukan Berbagai Macam Rekomendasi Wisata</h1>
            </div>
            <div class="row g-4 justify-content-center">
                @foreach ($data as $item)
                    <div class="col-lg-6 col-xl-4 wow fadeInUp mb-3" data-wow-delay="0.2s">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="{{ Storage::url($item->foto ?? '') }}" style="height: 250px"
                                    class="img-fluid rounded-top w-100" alt="">
                            </div>
                            <div class="blog-content rounded-bottom p-4">
                                <a href="#" class="h4 d-inline-block mb-3">{{ $item->name ?? '' }}</a>
                                <p>{{ Str::limit($item->deskripsi ?? '-', 60, '...') }}</p>
                                <a href="{{ route('spk/destinasi/wisata.detail', encrypt($item->id)) }}"
                                    class="fw-bold text-secondary">Read More <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                @endforeach



            </div>
        </div>
    </div>
    <!-- Blog End -->
@endsection
@section('js')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('/assets/landing/lib/wow/wow.min.js') }}"></script>
    <script src="{{ asset('/assets/landing/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('/assets/landing/lib/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('/assets/landing/lib/counterup/counterup.min.js') }}"></script>
    <script src="{{ asset('/assets/landing/lib/owlcarousel/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('/assets/landing/js/main.js') }}"></script>
@endsection
