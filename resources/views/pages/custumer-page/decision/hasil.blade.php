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

    {{-- css template 2 --}}
    <!-- Core CSS -->
    <link rel="stylesheet" href="{{ asset('/assets/vendor/libs/select2/select2.css') }}" />
    <link rel="stylesheet" href="{{ asset('/assets/vendor/css/core.css') }}" class="template-customizer-core-css" />
    <link rel="stylesheet" href="{{ asset('/assets/vendor/css/theme-default.css') }}"
        class="template-customizer-theme-css" />
    <link rel="stylesheet" href="{{ asset('/assets/css/demo.css') }}" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="{{ asset('/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" />

    <link rel="stylesheet" href="{{ asset('/assets/vendor/libs/apex-charts/apex-charts.css') }}" />

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css">
@endsection
@section('header')
    <div class="container-fluid bg-breadcrumb">
        <div class="container text-center py-5" style="max-width: 900px;">
            <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s">Hasil Rekomendasi Untuk Anda</h4>
        </div>
    </div>
@endsection
@section('content')
    <div class="card mt-4 m-2">
        <div class="card-header border-bottom mb-4">
            <h4 class="mb-1">Hasil Rekomendasi</h4>
            <div class="small">
                Berdasarkan kriteria yang telah dipilih, terdapat wisata yang direkomendasikan sebagai berikut:
            </div>
        </div>
        <div class="card-body">
            {{-- <h5>A. Alternatif</h5> --}}
            {{-- <div class="nav-align-top mb-4">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-top-home" aria-controls="navs-top-home" aria-selected="true">Un(Normalisasi)</button>
                </li>
                <li class="nav-item">
                    <button type="button" class="nav-link" role="tab" data-bs-toggle="tab" data-bs-target="#navs-top-profile" aria-controls="navs-top-profile" aria-selected="false">Normalisasi</button>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="navs-top-home" role="tabpanel">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered" id="dataTable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nama Wisata</th>
                                    @foreach ($criterias->sortBy('id') as $cri)
                                        <th>{{ $cri->name ?? 'unknown' }}</th>
                                    @endforeach
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($item->historyAlternatifValues->groupBy('alternative_id') as $histories)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        @foreach ($histories as $detail)
                                        @if ($loop->first)
                                        <td>{{ $detail->alternative->name ?? '-' }}</td>
                                        @endif
                                        <td>{{ $detail->nilai_awal ?? '-' }}</td>
                                        @endforeach
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="navs-top-profile" role="tabpanel">
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered" id="dataTable">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nama Wisata</th>
                                    @foreach ($criterias->sortBy('id') as $cri)
                                        <th>{{ $cri->name ?? 'unknown' }}</th>
                                    @endforeach
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($item->historyAlternatifValues->groupBy('alternative_id') as $histories)
                                <tr>
                                    <td>{{ $loop->iteration }}</td>
                                    @foreach ($histories as $detail)
                                    @if ($loop->first)
                                    <td>{{ $detail->alternative->name ?? '-' }}</td>
                                    @endif
                                    <td>{{ $detail->nilai_normalisasi ?? '-' }}</td>
                                    @endforeach
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div> --}}

            {{-- <h5>B. Preferensi</h5> --}}
            {{-- <div class="card-body"> --}}
            {{-- <div class="table-responsive text-nowrap mb-4"> --}}
            {{-- <table class="table table-bordered" id="dataTable"> --}}
            {{-- <thead>
                        <tr>
                            <th>#</th>
                            <th>Nama Wisata</th>
                            @foreach ($criterias->sortBy('id') as $cri)
                                <th>{{ $cri->name ?? 'unknown' }}</th>
                            @endforeach
                            <th>Total</th>
                        </tr>
                    </thead> --}}
            {{-- <tbody> --}}
            @php
                $arrPre = [];
            @endphp
            @foreach ($item->historyAlternatifValues->groupBy('alternative_id') as $key => $histories)
                <tr>
                    {{-- <td>{{ $loop->iteration }}</td> --}}
                    @foreach ($histories as $detail)
                        @if ($loop->first)
                            {{-- <td>{{ $detail->alternative->name ?? '-' }}</td> --}}
                            @php
                                $arrPre[$key]['alternative_id'] = $detail->alternative->id ?? '-';
                                $arrPre[$key]['alternative_name'] = $detail->alternative->name ?? '-';
                            @endphp
                        @endif
                        {{-- <td>{{ $detail->nilai_preferensi ?? '-' }}</td> --}}
                    @endforeach
                    {{-- <td>{{ $histories->sum('nilai_preferensi') }}</td> --}}
                    @php
                        $arrPre[$key]['preferensi'] = $histories->sum('nilai_preferensi');
                    @endphp
                </tr>
            @endforeach
            {{-- </tbody> --}}
            {{-- </table> --}}
            {{-- </div> --}}
            {{-- </div> --}}


            <div class="card-body">
                <div class="table-responsive text-nowrap mb-4">
                    <table class="table table-bordered" id="dataTable">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Wisata</th>
                                <th>Nilai</th>
                                <th>Peringkat</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                usort($arrPre, function ($a, $b) {
                                    return $b['preferensi'] <=> $a['preferensi'];
                                });

                                // print_r($arrPre);

                            @endphp
                            @foreach ($arrPre as $index => $pre)
                                @if (in_array($pre['alternative_id'], $alts->pluck('id')->toArray()))
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $pre['alternative_name'] ?? '-' }}</td>
                                        <td>{{ $pre['preferensi'] ?? '-' }}</td>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>
                                            <a href="{{ route('spk/destinasi/wisata.detail', encrypt($pre['alternative_id'])) }}"
                                                class="btn btn-sm btn-primary">Lihat</a>
                                        </td>
                                    </tr>
                                @endif
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div class="mt-3">
                    <h5 class="bg-label-dark p-4">Berdasarkan hasil penilaian dari beberapa objek wisata sesuai kriteria
                        yang telah diberikan,
                        maka direkomendasikan objek wisata dengan nama <span
                            class="text-primary text-uppercase">{{ $arrPre[0]['alternative_name'] }}</span> dengan skor
                        penilaian <span class="text-primary text-uppercase">{{ $arrPre[0]['preferensi'] }}</span></h5>
                </div>
            </div>
        </div>
    </div>
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
