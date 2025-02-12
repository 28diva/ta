@extends('pages.custumer-page.wisata.inndex-2')
@section('css')
    <link href="{{ asset('/assets/landing/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/assets/landing/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('/assets/landing/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Template Stylesheet -->
    <link href="{{ asset('/assets/landing/css/style.css') }}" rel="stylesheet">
    {{-- css Leaflet untuk maps --}}
    <link rel="stylesheet" href="{{ asset('/assets/vendor/leaflet/leaflet.css') }}">
    {{-- Leaflet --}}
@endsection
@section('header')
    <div class="container-fluid bg-breadcrumb">
        <div class="container text-center py-5" style="max-width: 900px;">
            <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Cari Rekomendasi Wisata</h4>
        </div>
    </div>
@endsection
@section('content')
    <!-- Contact Start -->
    <div class="container-fluid contact bg-light py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-12">
                    <div class="h-100 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                            <h4 class="text-uppercase text-primary">Jelajahi Semua Wisata</h4>
                            <h1 class="display-3 text-capitalize mb-3">Bingung Mau Pergi Kemana ?</h1>
                            <p class="mb-0">Anda bisa menyesuaikan tempat wisata sesuai kondisi anda dengan fiture
                                berikut. </p>
                        </div>
                    </div>
                </div>
                <div class="col-12 mt-2 ">
                    @if (session()->has('errors'))
                        <div class="alert alert-danger d-flex mb-4" role="alert">
                            <span class="alert-icon rounded-circle"><i class='bx bxs-badge-x'></i></span>
                            <div class="d-flex flex-column ps-1">
                                <h6 class="alert-heading d-flex align-items-center fw-bold mb-1">Transaction Errors !!</h6>
                                <span>{{ session('errors') }} !</span>
                            </div>
                        </div>
                    @endif
                    @if (session()->has('error'))
                        <div class="alert alert-danger d-flex mb-4" role="alert">
                            <span class="alert-icon rounded-circle"><i class='bx bxs-badge-x'></i></span>
                            <div class="d-flex flex-column ps-1">
                                <h6 class="alert-heading d-flex align-items-center fw-bold mb-1">Transaction Errors !!</h6>
                                <span>{{ session('error') }} !</span>
                            </div>
                        </div>
                    @endif
                </div>
                <div class="col-12 mt-2">
                    <form action="{{ route('spk/destinasi/rekomendasi.store') }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-lg-6 ">
                                <form>
                                    <div class="row g-4">

                                        <div class="col-lg-12 mb-2">
                                            <div class="form-floating">
                                                <input name="name" type="text" class="form-control border-0"
                                                    id="name" placeholder="Nama">
                                                <label for="name">Nama</label>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 mb-2">

                                            <label class="form-label" for="">Kategori Wisata</label>
                                            <select class="form-select" aria-label="Default select example"
                                                name="travel_category_id">
                                                <option value="All" selected>--- Tanpa Filter ---</option>
                                                @foreach ($travelCategory as $tc)
                                                    <option value="{{ $tc->id }}">
                                                        {{ $tc->name ?? '' }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        @foreach ($data as $index => $item)
                                            @if ($item->name === 'Jarak Tempuh')
                                                <div class="col-lg-12 mb-2">
                                                    <label class="form-label"
                                                        for="{{ $item->name ?? '' }}">{{ $item->name ?? 'unknown' }}</label>
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <select class="form-select" id="operator-jarak"
                                                                name="operator_jarak">
                                                                <option value="=">=</option>
                                                                <option value=">">></option>
                                                                <option value="<">
                                                                    < </option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-10">
                                                            <input name="value_jarak" type="text"
                                                                class="form-control border-0"
                                                                placeholder="Filter Jarak Tempuh /KM">
                                                            {{-- <select class="form-select" id="{{ $item->name ?? '' }}"
                                                                aria-label="Default select example"
                                                                name="sub_criteria_id[]">
                                                                <option value="All" selected>--- Tanpa Filter ---
                                                                </option>
                                                                @foreach ($item->subCriterias as $sub)
                                                                    <option value="{{ $sub->id }}"
                                                                        {{ old('sub_criteria_id') == $sub->id ? 'selected' : '' }}>
                                                                        {{ $sub->name ?? '-' }}</option>
                                                                @endforeach
                                                            </select> --}}
                                                        </div>
                                                        {{-- <select class="form-select" id="{{ $item->name ?? '' }}"
                                                        aria-label="Default select example" name="sub_criteria_id[]">
                                                        <option value="All" selected>--- Tanpa Filter ---</option>
                                                        @foreach ($item->subCriterias as $sub)
                                                            <option value="{{ $sub->id }}"
                                                                {{ old('sub_criteria_id') == $sub->id ? 'selected' : '' }}>
                                                                {{ $sub->name ?? '-' }}</option>
                                                        @endforeach
                                                    </select> --}}
                                                    </div>
                                                </div>
                                            @else
                                                <div class="col-lg-12 mb-1">
                                                    <input type="hidden" name="kriteria_id[]"
                                                        value="{{ $item->id ?? 'error' }}">
                                                    <label class="form-label"
                                                        for="{{ $item->name ?? '' }}">{{ $item->name ?? 'unknown' }}</label>
                                                    <select class="form-select" id="{{ $item->name ?? '' }}"
                                                        aria-label="Default select example" name="sub_criteria_id[]">
                                                        <option value="All" selected>--- Tanpa Filter ---</option>
                                                        @foreach ($item->subCriterias as $sub)
                                                            <option value="{{ $sub->id }}"
                                                                {{ old('sub_criteria_id') == $sub->id ? 'selected' : '' }}>
                                                                {{ $sub->name ?? '-' }}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                            @endif
                                        @endforeach
                                    </div>
                                </form>
                            </div>
                            <div class="col-lg-6 ">
                                @if ($isIncludeJarak)
                                    <div class="">
                                        <input type="hidden" class="form-control" id="maps-lokasi"
                                            placeholder="Masukkan titik lokasi keberangkatan anda" name="lokasi_user"
                                            value="{{ old('lokasi_user') }}" required />
                                        <label for="map" class="form-label">Lokasi User</label>
                                        <div id="map" style="width: 100%; height: 300px;"></div>
                                    </div>
                                @endif
                            </div>
                            <div class="col-12 d-flex justify-content-center">
                                <button type="submit"
                                    class="text-center btn btn-primary rounded-pill d-inline-flex flex-shrink-0 py-2 px-4 my-2">Cari
                                    Rekomendasi</button>
                            </div>
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div>
    <!-- Contact End -->
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
    <script src="{{ asset('/assets/vendor/leaflet/leaflet.js') }}"></script>
    <script>
        // untuk leaflet map
        let map = L.map('map').setView([-0.9483107301737814, 100.37339582797605], 13);

        const tiles = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);

        var tempMarker;

        $(document).ready(function() {
            // handle old location
            var loc = $('#maps-lokasi').val();
            loc = loc.split(", ");
            if (loc) {
                L.marker([loc[0], loc[1]])
                    .addTo(map)
                    .bindPopup(`Koordinat lokasi LatLng(${loc[0]}, ${loc[1]})`).
                openPopup();
            }
        });

        function onMapClick(e) {
            if (tempMarker) {
                map.removeLayer(tempMarker)
            }
            tempMarker = L.marker(e.latlng)
                .addTo(map);

            var currentLatLang = e.latlng.lat + ', ' + e.latlng.lng;

            $('#maps-lokasi').val(currentLatLang);
        }

        map.on('click', onMapClick);
    </script>
@endsection
