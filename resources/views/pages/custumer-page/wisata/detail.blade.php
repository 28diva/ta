<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- Fontawesome -->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
        integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/detail/styles.css') }}">

    {{-- hero style --}}
    <!-- Libraries Stylesheet -->
    <link href="{{ asset('/assets/landing/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('/assets/landing/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('/assets/landing/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('/assets/landing/css/style.css') }}" rel="stylesheet">

    {{-- css Leaflet untuk maps --}}
    <link rel="stylesheet" href="{{ asset('/assets/vendor/leaflet/leaflet.css') }}">
    {{-- Leaflet --}}
</head>

<body>
    <!-- Navbar & Hero Start -->
    <div class="container-fluid position-relative p-0">

        <!-- Header Start -->
        <div class="container-fluid bg-breadcrumb"
            style="background: linear-gradient(rgba(0, 20, 66, 0.7), rgba(0, 20, 66, 0.7)), url('{{ Storage::url($item->foto ?? '') }}'); background-repeat: no-repeat; background-size: cover;">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">{{ $item->name ?? '-' }}</h4>
            </div>
        </div>
        <!-- Header End -->
    </div>
    <!-- Navbar & Hero End -->
    <!-- Content -->
    <div class="container mt-5" id="content">
        <div class="row justify-content-center">
            <!-- Share buttons -->
            <div class="col-12 col-lg-4 d-flex justify-content-center mb-3" id="social-share">
                <div class="">
                    <img src="{{ Storage::url($item->foto ?? '') }}" alt="" style="max-width: 350px;">
                </div>
            </div>
            <div class="col-12 col-lg-8">
                <h3 style="font-size: 20px">Kategori Wisata : </h3>
                <p style="font-size: 17px">{{ $item->travelCategory->name ?? '-' }}</p>
                <h3 style="font-size: 20px">Rating : </h3>
                <p style="font-size: 17px">{{ $item->rating ?? '0' }}</p>
                <h3 style="font-size: 20px">Harga / Tarif : </h3>
                <p style="font-size: 17px">{{ 'Rp. ' . number_format($item->harga ?? 0) }}</p>
            </div>

            <!-- the content -->
            <div class="col-12 col-lg-7" >
                <h3 style="font-size: 20px">Fasilitas : </h3>
                <p style="font-size: 17px">{{ $item->fasilitas ?? '-' }}</p>
                <h3 style="font-size: 20px">Alamat : </h3>
                <p style="font-size: 17px">{{ $item->alamat ?? '-' }}</p>
                <h3 style="font-size: 20px">Aksesibilitas : </h3>
                <p style="font-size: 17px">{{ $item->aksesibilitas ?? '-' }}</p>
                <h3 style="font-size: 20px">Deskripsi : </h3>
                <p style="font-size: 17px">{{ $item->deskripsi ?? '-' }}</p>

            </div>
            <div class="col-12 col-lg-5">
                <div class="mt-3">
                    <input type="hidden" id="maps-lokasi" value="{{ $item->maps_lokasi ?? '' }}" />
                    <div id="map" style="width: 100%; height: 300px;"></div>
                </div>
            </div>

            <div class="col-lg-10 mt-3">
                <hr>
            </div>
        </div>
    </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
    </script>
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
</body>

</html>
