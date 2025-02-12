-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2025 at 03:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk_destinasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `travel_category_id` bigint(20) UNSIGNED NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `maps_lokasi` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `fasilitas` text DEFAULT NULL,
  `aksesibilitas` text DEFAULT NULL,
  `status` enum('accepted','denied','waiting') NOT NULL DEFAULT 'waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `name`, `travel_category_id`, `deskripsi`, `alamat`, `harga`, `maps_lokasi`, `foto`, `rating`, `fasilitas`, `aksesibilitas`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Air Terjun Proklamator', 3, 'Air terjun ini termasuk salah satu destinasi baru di Sumatera Barat. Diberi nama Proklamator, karena air terjun ini ditemukan pertama kali oleh Mahasiswa Pecinta Alam Proklamator, Universitas Bung Hatta, saat membuka jalur pendakian dikawasan tersebut pada tahun 2020, beberapa waktu lalu. Keindahan yang ditawarkan air terjun khas aliran air Gunung Singgalang ini tidak kalah dengan wisata air terjun lainnya. Menyajikan pemandangan air terjun dari berbagai sisi. Air terjun Proklamator Sumbar akan sangat menyejukkan mata kita bila melihatnya. Air yang mengalir terlihat sangat jernih sehingga kita dapat merasakan Iangsung kejernihan airnya dan juga kita bisa berenang di air terjun tersebut untuk merilekskan badan yang penat saat berjalan menuju ke air terjun.', 'Singgalang, Kec. sepuluh Koto, kabupaten Tanah Datar, Sumatera Barat 27282', 10000.00, '-0.47813709924980224, 100.34022992829829', 'imgUpload/lMCcJKLZjRjkqFXtBAonL7gko5OEDgmJb1dFrxPU.jpg', 4, 'Area parkir dan Toilet Umum', 'Hanya bisa diakses dengan berjalan kaki jarak jauh', 'accepted', '2024-11-10 04:16:13', '2025-02-04 21:51:19'),
(3, 'Puncak gagoan', 1, 'Puncak Gagoan memang memiliki keindahan alam yang unik dengan batuan karangnya. Selain itu, karena terletak di ketinggian maka dari Puncak Gagoan ini Anda bisa menyaksikan pesona Danau Singkarak. Puncak Gagoan ini di apit oleh dua bukit yang di batasi langsung dengan sungai dengan air yang sangat jernih, air sungai ini juga di manfaatkan oleh pemerintah untuk di alirkan ke rumah – rumah warga serta untuk kebutuhan lainnya,', '8GG5+7HG, Paninggahan, Kec. Junjung Sirih, Kabupaten Solok, Sumatera Barat 27388', 10000.00, '-0.6610640242388477, 100.50094007041412', 'imgUpload/kXoulBFwjqlX20GZmuX83ut9R7g6sFBg9TO93kz2.jpg', 5, 'Area parkir, toilet bersih, tempat makan, mushola, dan tempat duduk', 'Bisa diakses dengan kendaraan biasa tetapi membutuhkan usaha ekstra', 'accepted', '2024-11-10 04:41:03', '2025-02-04 21:51:31'),
(5, 'Geosite Batu Runcing', 1, 'Pengunjung tidak hanya dapat menikmati keunikan geologis Batu Runcing tetapi juga pemandangan indah yang dikelilingi oleh bukit barisan. Lokasi ini menawarkan pengalaman belajar tentang sejarah bumi sekaligus menikmati keindahan alam Sumatera Barat.', '7QCG+3Q5, Jalan Microwave, Silungkang Oso, Kec. Silungkang, Kota Sawahlunto, Sumatera Barat 27418', 5000.00, '-0.7280302822943312, 100.78036133697859', 'imgUpload/ZQRDDqXD4sRPGG6Q7GASiKq07WTEGQGnCnVeJOdl.jpg', 4, 'Area parkir, toilet bersih, tempat makan, mushola, dan tempat duduk', 'Bisa diakses dengan kendaraan roda empat atau bus', 'accepted', '2024-11-10 05:16:15', '2025-02-04 21:52:11'),
(6, 'Air Terjun Lubuk Bulan', 3, 'Di Kabupaten Limapuluh kota Provinsi Sumatera Barat, terdapat sebuah air terjun unik. Air Terjun Lubuak Bulan namanya. Keunikan Air terjun ini adalah  tidak adanya aliran air atau sungai yang muncul di tempat jatuhnya air. Hal itu masih menjadi tanda tanya bagi masyarakat sampai saat ini. \r\nNamun secara keilmuan, fenomena ini terjadi karena adanya pengaruh sungai di bawah tanah, kendati belum ada yang dapat memastikan di mana aliran air itu muncul. Keunikan keindahan Air Terjun Lubuak Bulan mengundang banyak wisatawan dating berkunjung air terjun setinggi 30 meter ini.\r\nKeindahan terlihat saat airnya jatuh lurus ke bawah dengan derasnya seakan-akan terlihat seperti selendang putih yang dikibaskan oleh angin. Di bagian bawah Air Terjun terdapat ruang besar (goa) yang bisa dimanfaatkan untuk bersantai.\r\nPara wisatawan yang datang mengunjungi Air Terjun Lubuak Bulan tidak diperkenankan untuk berenang, karena adanya goa yang memanjang ke bawah dan dikhawatirkan pengunjung akan tersedot sampai ke bawah yang belum jelas dimana dasarnya.\r\nCukup banyak spot bagi pengunjung untuk berfoto, salah satunnya di bagian depan air terjun, namun harus lebih berhati-hati, karena di bagian depan air terjun ada beberapa batu besar yang licin akibat dari banyaknya lumut yang menempel.', 'Simpang Kapuak, Kec. Mungka, Kabupaten Lima Puluh Kota, Sumatera Barat', 5000.00, '-0.03277300911126742, 100.57337642853093', 'imgUpload/p7MW8MDwT18RaKnEBMavICfHv0wkhI3GaW9CT0YH.jpg', 4, 'Area parkir dan Toilet Umum', '. Untuk mencapai Air Terjun Lubuk Bulan, perjalanan dimulai dari Kota Payakumbuh dengan kendaraan pribadi atau ojek, dilanjutkan dengan trekking sekitar 30–45 menit melalui jalur alami yang menantang.', 'accepted', '2024-11-10 05:36:25', '2025-02-10 06:36:04'),
(9, 'Janjang Saribu', 1, 'Janjang Koto Gadang atau Janjang Saribu (Indonesia: tangga seribu) adalah salah satu objek wisata yang terdapat di Ngarai Sianok, Kabupaten Agam, Sumatera Barat. Tangga dan jalan yang bertembok ini melintas mulai dari Koto Gadang di lembah Ngarai Sianok lalu naik ke Bukittinggi. Panjang keseluruhannya kira-kira sepanjang 780 m, lebar jalan 2 m, serta bertembok beton yang bentuknya menyerupai bentuk Tembok Besar Tiongkok. Kira-kira di pertengahan jalan bertembok ini, terdapat sebuah jambatan gantung yang sering disebut Jembatan Merah. Dari ujung ke ujung, perjalanan melintasi tangga dan jalan ini kira-kira memakan waktu 15-30 menit. Pada zaman penjajahan Belanda, pelintasaan ini telah ada, namun bernama Janjang Batuang, karena terbuat dari tanah dan ditopang oleh bambu (Minangkabau: batuang). Pada waktu itu penduduk setempat menggunakannya sebagai jalan pintas dari Koto Gadang menuju Bukittinggi, atau bila hendak mengambil pasir di sungai.', 'Ngarai Sianok, Kabupaten Agam, Sumatera Barat.', 10000.00, '-0.29859645752214437, 100.34518346418196', 'imgUpload/YpEUT1xpSSVoYrYtFbVgOgMkMynJe1Y3hfwaQMhI.jpg', 4, 'Fasilitas yang tersedia di sekitar kawasan ini meliputi area parkir, tempat duduk untuk beristirahat, serta warung makan dan pedagang suvenir.', 'Wisatawan dapat mengakses Janjang Seribu dengan mudah dari pusat Kota Bukittinggi menggunakan kendaraan pribadi atau berjalan kaki, karena lokasinya yang strategis dan dekat dengan berbagai tempat wisata lainnya.', 'accepted', '2025-01-13 07:14:29', '2025-02-10 06:35:18'),
(10, 'Puncak Lawang', 1, 'Lawang Park,\" begitu sebutan lokasi ini, dirilis sejak penghujung tahun 2009. Dengan ketinggian rata-rata 1250 mdpl, suhu berkisar 16-29 derjat celcius, dihiasi dengan pemandangan full-view Danau Maninjau adalah ciri khas/icon Lawang Park yang telah mendunia. Siapapun yang menikmati secara langsung akan berdecak kagum dengan keindahannya yang luar biasa. \"Second place of swedia\" demikian kata sebagian turis mancanegara, karana dari lokasi ini juga dapat dijadikan sebagai tempat kegiatan olahraga paralayang yang telah mendunia.', 'Jorong Batu Basa, Kenagarian Lawang, Kecamatan Matur, Kabupaten Agam Sumatera Barat', 25000.00, '-0.26799640510416906, 100.24323199514187', 'imgUpload/ECGHmG1EX0bIhSGgfpYSI0tjtb8bnAAZzvI6xoq2.jpg', 4, 'Puncak Lawang di Kabupaten Agam memiliki berbagai fasilitas untuk kenyamanan wisatawan, seperti area parkir yang luas, warung makan dan kafe yang menyajikan kuliner khas Minang, serta gazebo dan spot foto dengan latar Danau Maninjau. Bagi pecinta petualangan, tersedia wahana outbond seperti flying fox dan aktivitas paralayang.', 'Tempat ini dapat diakses dari Bukittinggi dalam waktu sekitar 1 jam perjalanan menggunakan kendaraan pribadi atau sewaan, melalui jalur berkelok dengan pemandangan perbukitan yang indah. Infrastruktur jalan menuju lokasi cukup baik, sehingga perjalanan terasa nyaman dan menyenangkan.', 'accepted', '2025-01-13 07:25:26', '2025-02-10 06:34:24'),
(11, 'Air Terjun Tembulun Barangin', 3, 'Air Terjun Tembulun Barangin merupakan air terjun bertingkat yang sangat indah untuk dipandang yang memiliki air yang jernih dikelilingi oleh kekayuan dan juga memiliki tempat pemandian.\r\nJalan menuju ke Air Terjun Tembulun Barangin bisa ditempuh dalam waktu 2 jam dari pusat kabupaten di Pulau Punjung. Jalan yang ekstrem namun pemandangan yang indah terbalaskan.\r\nAir Terjun Tembulun Berangin menjadi daya tarik wisata alam yang ada di nagari Lubuk Karak, yang bisa dijadikan sebagai alternatif berlibur.\r\nAir Terjun Tembulun ini cukup terkenal dari beberapa daerah di Sembilan Koto, dan sering dikunjungi oleh muda-mudi. Perpaduan airnya yang berwarna hijau tua dan muda seakan-akan menghipnotis pengunjung untuk menceburkan diri dan bermain air di area air terjun ini.', 'Jorong Kubang Panjang, Kanagarian IV kota, Kecamatan Pulau Punjung,Kabupaten Dharmasraya', 10000.00, '-0.7408126127702926, 100.928958493003', 'imgUpload/raLVqrp5udKBg4jOZW8Wb5q1PZ1Y9owYXxXOfKYh.jpg', 3, 'Fasilitas di sekitar air terjun masih terbatas, sehingga wisatawan disarankan membawa perlengkapan sendiri', 'Untuk mencapai Air Terjun Tembulun Barangin, wisatawan dapat melakukan perjalanan dari Pulau Punjung, ibu kota Dharmasraya, menggunakan kendaraan pribadi atau ojek, dilanjutkan dengan trekking menyusuri jalur alami.', 'accepted', '2025-01-13 22:27:10', '2025-02-10 06:32:34'),
(12, 'Air Terjun Kulukubuk', 3, 'Air terjun ini tampak menawan. Derasnya air setinggi 15-20 meter di atas tebing jatuh ke permukaan air nan jernih dan segar. Alirannya menuju ke arah Sungai Rereiket, salah satu hulu Sungai Siberut.\r\nSuasana air terjun sejuk dan asri. Pepohonan mengapit aliran di hulu air terjun. Dinding tebing ditumbuhi semak belukar dengan bebatuan licin di bagian bawah. Beberapa pohon tumbang terdampar di tepiannya, tetapi nyaris tak ditemukan sampah plastik', 'Desa Goisok Oinan, Sipora Utara, Kabupaten Kepulauan Mentawai', 10000.00, '-1.6152768980486325, 99.08435174458403', 'imgUpload/VBzIFtPrOsr4C0ymPkkuR1leDeBfvnh6c0CbVsOk.jpg', 4, 'Fasilitas di sekitar lokasi masih terbatas, namun wisatawan dapat menemukan penginapan dan warung makan di desa terdekat.', 'Untuk mencapai Air Terjun Kalukubuk, perjalanan dimulai dari Kota Tuapejat, ibu kota Kabupaten Kepulauan Mentawai, dengan menggunakan transportasi darat dan trekking menyusuri hutan selama beberapa waktu.', 'accepted', '2025-01-13 22:36:32', '2025-02-10 06:28:44'),
(13, 'Lembah Harau', 1, 'Lembah Harau sendiri adalah sebuah nagari yang terletak di Kabupaten Lima Puluh Kota, Sumatra Barat. Jaraknya sekitar 50 km dari Bukittinggi, atau 1,5 jam perjalanan. Sesuai namanya, Lembah Harau merupakan sebuah lembah dengan luas sekitar 270,5 hektare yang dikelilingi pemandangan tebing-tebing tinggi menjulang, dengan ketinggian sekitar 100-500 meter. \r\nFakta menarik lainnya dari tebing batuan yang mengelilingi Lembah Harau adalah usia batuan yang diperkirakan para peneliti berusia 40 juta tahun. Selain itu, tebing batuan di Lembah Harau juga banyak mengandung karbon organik, yaitu batuan yang terbentuk dari sisa-sisa organisme.', 'Kecamatan Harau, Kabupaten Lima Puluh Kota', 5000.00, '-0.10169143018854505, 100.66470169552443', 'imgUpload/E0w6wWut9OoY4Kf9dvTWaXeB09SWXPpPhKma04xF.jpg', 4, 'Tempat ini menawarkan berbagai fasilitas bagi wisatawan, seperti area parkir, penginapan, warung makan, serta spot foto dengan latar alam yang eksotis. Selain itu, terdapat air terjun alami yang menyegarkan, jalur trekking, serta wahana flying fox bagi pecinta petualangan.', 'Wisatawan dapat menikmati keindahan lembah ini dengan berjalan kaki, bersepeda, atau menggunakan kendaraan pribadi. Lembah Harau dapat diakses dari Kota Payakumbuh dalam waktu sekitar 30 menit perjalanan, atau sekitar 2,5 jam dari Kota Padang melalui jalur darat yang nyaman dengan pemandangan yang indah sepanjang perjalanan.', 'accepted', '2025-01-13 22:48:18', '2025-02-10 06:27:28'),
(16, 'Puncak Koto Panjang', 1, 'Objek wisata Puncak Koto Panjang berlokasi di Nagari Lansekkadok, Kecamatan Rao Selatan, Kabupaten Pasaman. Saat ini, objek wisata baru tersebut ramai dikunjungi oleh masyarakat lantaran memiliki keindahan yang tidak dimiliki oleh objek wisata lainnya.\r\nUntuk bisa sampai ke objek wisata Puncak Koto Panjang, pengunjung hanya membutuhkan waktu sekitar satu jam baik dari arah Lubuksikaping maupun dari arah Rao. Sampai saat ini objek wisata tersebut masih dikelola oleh pihak nagari setempat.\r\nDi sepanjang jalan menuju Puncak Koto Panjang, pengunjung akan disuguhkan pemandangan perkebunan masyarakat, mulai dari lahan jagung hingga kebun sereh wangi, yang membentang di sepanjang jalan.', 'Nagari Lansek kadok Koto panjang, Rao Selatan, Kabupaten Pasaman', 5000.00, '0.49733252828130786, 100.05716790774565', 'imgUpload/TTSqDVwUHO9kDxdMWK7hxfBCpUKaAcHKGCxy8las.jpg', 4, 'Fasilitas yang tersedia meliputi area parkir, gazebo untuk beristirahat, warung makan dengan hidangan khas Minang, serta spot foto dengan dekorasi unik.', 'Puncak Koto Panjang dapat diakses dari pusat Kecamatan Rao dalam waktu sekitar 30–45 menit perjalanan menggunakan kendaraan pribadi atau ojek. Jalan menuju lokasi cukup menanjak, namun menawarkan pemandangan yang indah sepanjang perjalanan.', 'accepted', '2025-01-13 23:19:31', '2025-02-10 06:25:55'),
(17, 'Pantai Aie Manih', 2, 'Pantai Air Manis erat kaitannya dengan legenda Malin Kundang di Sumatera Barat. Pantai Air Manis menjadi tempat wisata favorit bagi wisatawan lokal maupun mancanegara karena memiliki ombak yang rendah dan pemandangan Gunung Padang yang indah. Selain bermain air dan berenang, pengunjung dapat menyewa perahu motor untuk mengunjungi Pulau Pisang Kecil dan Pisang Besar yang jaraknya sekitar 500 meter dari bibir pantai. Jika Anda mengunjungi pantai Air Manis, Anda harus menyiapkan pakaian ekstra. Anda akan tergoda untuk berenang atau jalan kaki menuju Pulau Pisang Kecil.\r\n\r\nDi Pulau Pisang Kecil, pengunjung bisa duduk di bawah gazebo sambil menikmati pemandangan laut dan pantai. Jika ingin bermalam di pulau Pisang Besar, Anda bisa menginap di rumah penduduk setempat atau tenda sendiri. Jika berkunjung ke Pulau Sikuai, Anda bisa mencoba olahraga air seperti surfing dan diving. Pulau ini terkenal dengan pasir putihnya. Anda bisa berkeliling pantai dan menyeberang ke Pulau Pisang Kecil. Pengunjung juga bisa menyewa perahu motor untuk mengunjungi Pulau Sikuai yang terletak di seberang Pulau Pisang.', 'Air Manis, Kec. Padang Selatan, Kota Padang', 20000.00, '-0.9893797346197521, 100.35802644235974', 'imgUpload/KwpP4j6gT46TSaI6oa5ihhNRB2y3oA07cRrNue0T.jpg', 4, 'Fasilitas yang tersedia meliputi area parkir, warung makan, gazebo untuk bersantai, serta penyewaan ATV dan perahu menuju Pulau Pisang Kecil. Wisatawan juga dapat menikmati aktivitas seperti berenang, bermain pasir, atau berfoto di sekitar batu Malin Kundang yang menjadi ikon pantai ini.', 'Pantai Air Manis dapat diakses dari pusat Kota Padang dalam waktu sekitar 30 menit perjalanan menggunakan kendaraan pribadi, ojek atau bus. Rutenya melewati jalur berkelok di Bukit Gado-Gado dengan pemandangan kota dan laut yang menawan.', 'accepted', '2025-01-13 23:47:48', '2025-02-10 06:23:37'),
(18, 'Ngarai Sianok', 1, 'Terletak di pinggiran kota perbukitan Bukittinggi di dataran tinggi Minangkabau, terletak ngarai yang menakjubkan yang oleh penduduk setempat disebut Ngarai Sianok, atau Ngarai Sianok. Ngarai Sianok adalah sebuah lembah terjal (jurang) yang terletak di perbatasan kota Bukittinggi, kecamatan Koto IV, Kabupaten Agam, Sumatera Barat. Ngarai Sianok memiliki pemandangan yang indah dan juga menjadi salah satu objek wisata potensial di provinsi ini. Ngarai Sianok memiliki dua dinding terjal yang saling berhadapan dan hampir vertikal, jatuh ke dasar yang datar di mana sebuah sungai berkelok-kelok di antara persawahan hijau. Tingginya sekitar 100 hingga 120 meter dan ngarai itu sendiri panjangnya sekitar 15 km. Tebing ini memisahkan kota Bukittinggi dan Kota Gadang di seberangnya. Keindahan Ngarai Sianok dapat dilihat dari Taman Panorama di Bukittinggi atau dengan berjalan kaki menuruni tebing yang terdapat pemukiman dan persawahan.  Selain mengagumi keindahan Sianok, pengunjung juga bisa mengunjungi bunker Jepang yang dibangun pada masa Perang Dunia II dan terletak di dasar ngarai. Ngarai Sianok bisa dibilang pemandangan paling indah di antara banyak tempat indah di Sumatera Barat, untuk dinikmati terutama saat matahari terbit atau terbenam.', 'Taman Jl. Panorama, Kayu Kubu, Kec. Guguk Panjang, Kota Bukittinggi', 25000.00, '-0.30652987718580743, 100.36627016135839', 'imgUpload/x4221e83bGn4mQ5Xl4HxeiEOyIc0dS8WY2j5Id6G.jpg', 4, 'Ngarai Sianok, yang terletak di Kota Bukittinggi, Sumatera Barat, menawarkan keindahan lembah curam dengan pemandangan hijau yang menakjubkan. Berbagai fasilitas tersedia bagi wisatawan, seperti area trekking, jalur sepeda, dan spot fotografi yang memanjakan mata. Selain itu, terdapat gazebo untuk bersantai, restoran dengan kuliner khas Minangkabau, serta penginapan di sekitar kawasan. Wisatawan juga dapat mengunjungi objek wisata sekitar seperti Janjang Koto Gadang dan Lubang Jepang.', 'Ngarai Sianok dapat diakses dengan mudah dari pusat Kota Bukittinggi hanya dalam waktu sekitar 10 menit perjalanan menggunakan kendaraan pribadi atau transportasi umum. Bagi wisatawan dari Padang, perjalanan memakan waktu sekitar 2 jam dengan jalur darat yang nyaman dan pemandangan alam yang indah sepanjang perjalanan.', 'accepted', '2025-01-13 23:52:06', '2025-02-10 06:21:58'),
(19, 'Danau Singkarak', 4, 'Danau Singkarak yang terbentang di dua kabupaten; Tanah Datar dan Solok, merupakan danau kawah yang sangat besar yang murni terbentuk dari aktivitas tektonik. Danau ini dapat dicapai dari Bandara Internasional  Minangkabau melalui dua arah, satu dari Padang Panjang dengan jarak tempuh 77 km dalam waktu 2 jam, dan satu lagi dari Solok dengan jarak tempuh 92 km dalam waktu 2,5 jam. Danau Singkarak menyajikan pemandangan yang menakjubkan dan kuliner yang lezat dengan spesifik  “ikan bilih” endemiknya (Mystacoleucus padangensis bleeker). Ikan Bilih ini merupakan ikon danau Singkarak dan bisa menjadi oleh-oleh yang menarik bagi masyarakat yang datang dan berkunjung ke danau ini. Sebagai spesies endemik danau ini,  ikan ini tidak dapat ditemukan di tempat lain, bahkan di anak sungai mana pun dari danau ini. Ikan ukuran 2 – 5 cm enak dan renyah. Meskipun ikan bilih  tumbuh secara alami tanpa budidaya apapun, namun telah menjadi sumber penghidupan bagi masyarakat sekitar danau Singkarak.', 'Kec. X Koto Singkarak, Kabupaten Solok', 5000.00, '-0.6116464717054643, 100.54595288115712', 'imgUpload/akoXmUatjV1xeBirjIseA4JMqzjtHBv3Rep5k931.jpg', 4, 'Danau Singkarak, yang terletak di antara Kabupaten Solok dan Tanah Datar, menawarkan berbagai fasilitas bagi wisatawan. Tersedia penginapan, restoran yang menyajikan kuliner khas seperti ikan bilih, serta spot wisata dan fotografi dengan pemandangan indah. Wisatawan juga dapat menikmati perahu wisata, memancing, hingga olahraga air seperti jet ski dan kano. Selain itu, terdapat pusat oleh-oleh, area parkir, serta tempat istirahat yang nyaman', 'Danau ini dapat diakses dari Kota Padang dalam waktu sekitar 2 jam perjalanan melalui jalur darat, baik dengan kendaraan pribadi, bus, maupun travel. Dari Bukittinggi, perjalanan sekitar 1,5 jam, sementara dari Solok hanya memerlukan 30 menit perjalanan. Infrastruktur jalan yang baik menjadikan Danau Singkarak destinasi wisata yang mudah dijangkau dan menarik untuk dikunjungi.', 'accepted', '2025-01-13 23:55:13', '2025-02-10 06:19:55'),
(21, 'Danau Maninjau', 4, 'Danau Maninjau adalah sebuah danau di kecamatan Tanjung Raya, Kabupaten Agam, Provinsi Sumatera Barat, Indonesia. Danau ini terletak sekitar 107 kilometer sebelah utara Kota Padang, ibukota Sumatera Barat, dan 53 kilometer dari Bukittinggi. Pensi (sejenis kerang) adalah salah satu spesies spesifik Danau Maninjau yang dapat dinikmati dalam sajian kuliner lokal seperti gulai pensi. Kuliner spesi kini sangat digemari oleh wisatawan. Untuk menikmati keindahan Danau Maninjau dapat melalui Kelok 44 yang merupakan lintasan jalan berliku dan menanjak antara Desa Maninjau hingga Embun Pagi. Kelok 44 merupakan rute jalan yang sangat menantang baik tanjakan, turunan dan tikungan yang merupakan “Challenge of mountain” pada iven internasional Tour de Singkarak.', 'Kec. Tj. Raya, Kabupaten Agam, Sumatera Barat', 10000.00, '-0.3170426332024603, 100.22401578590282', 'imgUpload/cbkWg0u0k4ec7O2HigFFqzFomjgRAYePgYvDusrq.jpg', 4, 'Fasilitas di sekitar danau cukup lengkap, termasuk penginapan, restoran, warung makan, serta area untuk memancing dan bersepeda. Wisatawan juga dapat menikmati berbagai aktivitas seperti berenang, berperahu, atau sekadar bersantai di tepi danau.', 'Danau Maninjau dapat diakses dari Bukittinggi dalam waktu sekitar 1,5 jam perjalanan menggunakan kendaraan pribadi atau angkutan umum, melalui jalur yang menawarkan pemandangan alam yang memukau sepanjang perjalanan.', 'accepted', '2025-02-10 06:45:40', '2025-02-10 06:45:45'),
(22, 'Ngalau Indah', 5, 'Ngalau Indah terletak sekitar 4 km dari pusat Kota Payakumbuh atau 31 km dari Bukittinggi. Objek ini merupakan sebuah gua alam dengan beberapa mulut gua sebagai akses masuk dan keluar. Di dalam gua besar ini kita dapat melihat keindahan stalagtit dan stalagmit yang masih terjaga dengan baik. Gua ini dihuni kawanan kalelawar yang membuatnya senantiasa dipenuhi suara riuh sepanjang waktu. Selain kalelawar, terdapat burung walet yang bersarang diantara celah-celah langit-langit yang menjulang dengan tinggi sekitar 10 meter. Di dalam gua ini kita akan mendengar suara kelelawar yang berterbangan di sekitar kita dan merasakannya tanpa dapat melihatnya. Di luar gua ini kita akan menikmati taman dengan pohon-pohon yang rindang menambah kesejukan dan keindahan alam.', 'Pakan Sinayan, Kec. Payakumbuh Bar., Kota Payakumbuh, Sumatera Barat 26225', 10000.00, '-0.25454973795496355, 100.60178522784807', 'imgUpload/9ZPZs0pyz2dWKidFdNCHOqPOeAgP5JfILuWV5kzM.jpg', 4, 'Fasilitas yang tersedia meliputi area parkir, gazebo, warung makan, serta jalur tangga yang memudahkan akses ke dalam gua.', 'Ngalau Indah dapat diakses dengan mudah, hanya sekitar 10 menit perjalanan dari pusat Kota Payakumbuh menggunakan kendaraan pribadi atau ojek.', 'accepted', '2025-02-10 06:50:43', '2025-02-10 06:50:47'),
(23, 'Pantai Air Bangis', 2, 'Objek wisata bahari Pantai Air Bangis memiliki potensi dan mempunyai keindahan tersendiri. Pantai Air Bangis yang berbatasan langsung dengan Samudera Indonesia dikelilingi oleh perbukitan yang menambah keindahan panorama alamnya. Di sana pengunjung dapat merasakan suasana pantai yang tenang dengan ditemani deburan ombak dan sepoi-sepoi angin pantai. Anak-anak pun dapat bermain air di pinggir pantai karena pantai tidak terlalu berbahaya karena ombaknya tidak terlalu besar.\r\nDari Pantai Air Bangis pengunjung bisa mengelilingi sembilan pulau yang ada di perairan Air Bangis dengan menggunakan kapal kecil yang telah tersedia di sekitar pantai. Pengunjng juga bisa langsung melihat proses pengolahan ikan asin di tempat pengolahan ikan asin milik nelayan setempat yang berada di sekitar daerah pantai, ikan asin yang siap diolah bisa langsung dibawa pulang oleh pengunjung sebagai oleh-oleh khas dari Nagari Air Bangis', 'Aia Bangih, Kec. Sungai Beremas, Kabupaten Pasaman Barat, Sumatera Barat 26573', 10000.00, '0.08507606328417339, 99.56853261440625', 'imgUpload/kC5RZXKnk0kzyYqpAi7TIbyPgGfxATvKsVknkxLp.jpg', 4, 'Fasilitas di sekitar pantai cukup memadai, seperti area parkir, warung makan yang menyajikan hidangan laut, serta perahu sewaan untuk menjelajahi pulau-pulau kecil di sekitarnya.', 'Wisatawan dapat mengakses Pantai Air Bangis dari Kota Simpang Empat, ibu kota Pasaman Barat, dengan perjalanan sekitar 1,5 jam menggunakan kendaraan pribadi atau angkutan umum, melalui jalur darat yang cukup baik dan nyaman.', 'accepted', '2025-02-10 06:55:53', '2025-02-10 06:55:58'),
(24, 'Pantai Kata', 2, 'Lokasi  Hutan Pinus Pantai Kata Pariaman ini tepatnya berada di selatan Kota Pariaman, di desa Karan Aur dan Desa Taluak. Nama “Kata” sendiri merupakan singkatan yang diambil dari nama daerah dimana Hutan Pinus Pantai Kata Pariaman ini berada, yaitu desa Karan Aur dan Desa Taluak. Jadi “Ka” dari Karan Aur dan “Ta” dari Taluak. Cukup mudah menemukan Pantai Kata. Kamu bisa ke sini dengan menggunakan berbagai kendaraan. Baik kendaraan roda empat atau roda dua. Banyak sudah petunjuk di jalan, atau petunjuk di papan jalan yang mengarahkan kamu ke Pantai Kata ini. Bicara tentang fasilitas yang membuat para petualang nyaman dan senang menghabiskan waktunya berlama-lama di Pantai Kata ini, spot petualangan ini sudah dilengkapi dengan berbagai fasilitas. Dari rumah makan, kamar mandi, tempat beribadah serta café-café seru dipinggir pantai.', 'Karan Aur Taluk, Sumatera Barat.', 10000.00, '-0.6443567326932207, 100.12697277336063', 'imgUpload/GdrW5EAl3DxGwhcn1H0WjZrFzachj1nnBzoOYeBi.jpg', 4, 'Fasilitas yang tersedia cukup lengkap, termasuk area parkir, gazebo, tempat duduk, serta penyewaan perahu dan wahana permainan air.', 'Pantai Kata dapat diakses dengan mudah dari pusat Kota Pariaman dalam waktu sekitar 10–15 menit menggunakan kendaraan pribadi atau angkutan umum, serta sekitar 1 jam perjalanan dari Kota Padang melalui jalur darat yang nyaman.', 'accepted', '2025-02-10 06:59:46', '2025-02-10 06:59:49'),
(25, 'Gunung Padang', 1, 'Gunung Padang merupakan sebuah bukit kecil dengan ketinggian puncak sekitar 80 meter di atas permukaan laut yang letaknya berada di seberang selatan dari muara Batang Arau dan termasuk dalam wilayah Kecamatan Padang Selatan Kota Padang. Masyarakat Kota Padang menamainya Gunung Padang karena bukit ini bisa dikatakan tempat tertinggi di sekitar pusat Kota Padang. Gunung Padang adalah objek wisata dengan kombinasi antara panorama yang indah, legenda Siti Nurbaya, dan sepenggal sejarah masa pendudukan Jepang. Pemandangan di Gunung Padang memang indah. Apalagi sejak kehadiran Taman Siti Nurbaya yang kemudian dijadikan nama puncak dari kawasan objek wisata Gunung Padang dengan luas sekitar 180 meter persegi. Konon taman ini merupakan interpretasi tempat Syamsul Bahri dan Siti Nurbaya memadu kasih semasa hidupnya. Taman ini menyajikan panorama alam yang sangat indah dan taman-taman dengan pepohonan yang rindang cocok untuk bersantai. Udaranya begitu segar dan panorama alam ini begitu menyejukan mata. Dari puncak Gunung Padang ini sebagian wajah Kota Padang dapat dinikmati.', 'Bukit Gado-gado, Kec. Padang Sel., Kota Padang, Sumatera Barat', 10000.00, '-0.965114637582219, 100.34877563288597', 'imgUpload/Nk6iBptLKXxtf57WLCW1g3gaIenLkGQjFU3YCnn9.jpg', 4, 'Fasilitas di kawasan ini masih terbatas, namun tersedia jalur pendakian yang cukup baik serta beberapa warung makan di sekitar area.', 'Gunung Padang dapat diakses dari pusat Kota Padang dalam waktu sekitar 15–20 menit menggunakan kendaraan pribadi atau ojek, lalu dilanjutkan dengan pendakian singkat menuju puncak.', 'accepted', '2025-02-10 07:03:50', '2025-02-10 07:03:53'),
(26, 'Goa Batu Kapal', 5, 'Goa Batu Kapal merupakan salah satu suguhan panorama cantik eksotis di Sumatera Barat yang bisa Anda kunjungi. Lokasi ini seperti menampilkan lukisan mahakarya alam dengan dinding-dinding gua yang bergurat dengan motif cantik.\r\nTerdapat empat bongkah batu kapur dengan dua terbesar memiliki goa, goa inilah yang disebut Batu kapal. Nama ini muncul sebab lorongnya mirip dengan kabin kapal. Saat masuk ke bibir goa, Anda akan disambut dengan keleawar dan walet di atap goa dengan backsound rintik air yang jatuh disungai, sungguh merupakan tempat yang menenangkan. Pemandangan indah juga muncul dari lubang-lubang di atap yang menyalurkan berkas sinar matahari yang indah. Dengan warna dinding putih kehijauan dan sorot cahaya matahari, dinding menjadi sangat indah seperti lukisan.', 'Sungai Kunyit Bar., Kec. Sangir Balai Janggo, Kabupaten Solok Selatan, Sumatera Barat 27779', 5000.00, '-1.4621100597754673, 102.31453451634849', 'imgUpload/WUkMiPCR0FusXFmTrjhwwDamc3ADqdwnfIAKVgLK.jpg', 4, 'Area parkit', 'Goa Batu Kapal dapat diakses dari Padang Aro, ibu kota Solok Selatan, dalam waktu sekitar 20–30 menit menggunakan kendaraan pribadi atau ojek, kemudian dilanjutkan dengan berjalan kaki menuju pintu masuk gua.', 'accepted', '2025-02-10 07:10:17', '2025-02-10 07:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `tipe` enum('cost','benefit') NOT NULL,
  `bobot` double(8,2) NOT NULL DEFAULT 0.00,
  `atribut` enum('konstanta','dinamis') NOT NULL DEFAULT 'dinamis',
  `is_include` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criterias`
--

INSERT INTO `criterias` (`id`, `kode`, `name`, `tipe`, `bobot`, `atribut`, `is_include`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'Jarak Tempuh', 'cost', 25.00, 'konstanta', 1, NULL, '2025-02-05 01:35:56'),
(2, 'C2', 'Biaya', 'cost', 20.00, 'dinamis', 1, '2024-11-06 22:57:09', '2024-11-08 02:04:56'),
(3, 'C3', 'Fasilitas', 'benefit', 20.00, 'dinamis', 1, '2024-11-06 22:57:44', '2024-11-08 02:04:08'),
(4, 'C4', 'Aksebilitas', 'benefit', 20.00, 'dinamis', 1, '2024-11-08 02:04:27', '2024-11-08 02:05:46'),
(5, 'C5', 'Peringkat', 'benefit', 15.00, 'dinamis', 1, '2024-11-08 02:05:27', '2024-11-08 02:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `user_id`, `name`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 1, 'coba', '-0.9461616565337386, 100.37746207998185', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(2, 1, 'coba', '-0.9605863638664912, 100.37834027590507', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(3, 1, 'coba', '-0.9478780338590763, 100.37797671449685', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(4, 1, 'coba', '-0.9489078610245814, 100.37746207998185', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(5, 1, 'coba', '-0.9444524242704487, 100.38143554146644', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(6, 1, 'coba', '-0.9489150108550568, 100.37800114854124', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(7, 1, 'coba', '-0.949615861785078, 100.37597935855422', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(8, 1, 'coba', '-0.9463332925366905, 100.37540354192176', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(9, 1, 'coba', '-0.9477063959683761, 100.37574663159842', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(10, 1, 'coba', '-0.948221309614956, 100.3769474454668', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(11, 1, 'coba', '-0.947363120161455, 100.37606606393668', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(12, 1, 'coba', '-0.9478780338590763, 100.37574663159842', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(13, 1, 'coba', '-0.9478780338590763, 100.37574663159842', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(14, 1, 'coba', '-0.94764918420925, 100.37746207998185', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(15, 1, 'coba', '-0.947191482245234, 100.37643281095181', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(16, 1, 'coba', '-0.9431669300017762, 100.41228568216488', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(17, 1, 'coba', '-0.9478780338590763, 100.37660435579014', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(18, 1, 'coba', '-0.9499376878835191, 100.37591817643676', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(19, 1, 'coba', '-0.9479352482334072, 100.37660435579014', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(20, 1, 'Diva', '-0.9051399403762417, 100.35796069023895', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(21, 1, 'Diva', '-0.9046250204688798, 100.3639730393476', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(22, 1, 'Khay', '-0.9368931917714397, 100.35727356462651', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(23, 1, 'Khay', '-0.9505348458173656, 100.37421816619126', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(24, 1, 'Air Terjun Proklamator', '-0.9452784349353921, 100.35833358066157', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(25, 1, 'Diva', '-0.9290228476304875, 100.35896299872549', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(26, 1, 'Diva', '-0.9288011466187721, 100.36142348544674', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(27, 1, 'Diva', '-0.92725639753409, 100.36245345370845', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(28, 1, 'Diva', '-0.9276336457254961, 100.36159514682369', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(29, 1, 'Diva', '-0.9278624940649085, 100.36211013095455', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(30, 1, 'Diva', '-0.9280913476275168, 100.36176680820064', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(31, 1, 'Diva', '-0.9280913476275168, 100.36176680820064', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(32, 1, 'coba', '-0.9522351312501305, 100.3687477076892', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(33, 1, 'coba', '-0.95025593380015, 100.37269591935912', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(34, 1, 'coba', '-0.9505992099747307, 100.36977767595091', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(35, 1, 'coba', '-0.9543752390926269, 100.36943435319701', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(36, 1, 'coba', '-0.9535742615213904, 100.37458419450562', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(37, 1, 'coba', '-0.952887711039838, 100.37509917863646', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(38, 1, 'coba', '-0.9541285061580179, 100.37429808871822', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(39, 1, 'coba', '-0.9542608131755113, 100.37681579240599', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(40, 1, 'coba', '-0.9337250292826311, 100.36445616278797', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(41, 1, 'diva altira', '-0.9274530655708096, 100.36926268134268', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(42, 1, 'andi', '-0.9488828321982631, 100.3720092738513', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(43, 1, 'andi', '-0.9511141233541694, 100.37475585588255', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(44, 1, 'andi', '-0.9522923429333304, 100.37681579240599', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(45, 1, 'nanda', '-0.9522923447338933, 100.37303924211302', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(46, 1, 'nanda', '-0.9536654439969277, 100.37647246965209', '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(47, 1, 'andi', '-0.9464691603660852, 100.38391110487284', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(48, 1, 'nanda', '-0.9319818271143404, 100.36050796159545', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(49, 1, 'nanda', '-0.9484018886980373, 100.35741805681029', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(50, 1, 'andi', '-0.9355862372895637, 100.35879134782591', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(51, 1, 'andi', '-0.9368681620403045, 100.35982131608763', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(52, 1, 'andi', '-0.9360671830500953, 100.35467147477905', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(53, 1, 'andi', '-0.9398432273144289, 100.35673141130248', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(54, 1, 'andi', '-0.9350373507803216, 100.35484313615599', '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(55, 1, 'diva', '-0.9372686508119983, 100.36571501987056', '2025-02-10 23:38:03', '2025-02-10 23:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `history_alternatif_values`
--

CREATE TABLE `history_alternatif_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_id` bigint(20) UNSIGNED NOT NULL,
  `alternative_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nilai_awal` double NOT NULL DEFAULT 0,
  `nilai_normalisasi` double NOT NULL DEFAULT 0,
  `nilai_preferensi` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_alternatif_values`
--

INSERT INTO `history_alternatif_values` (`id`, `history_id`, `alternative_id`, `criteria_id`, `name`, `nilai_awal`, `nilai_normalisasi`, `nilai_preferensi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'jaraktempuh', 71.259261890647, 1, 0.25, '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(2, 1, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(3, 1, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(4, 1, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(5, 1, 1, 5, 'peringkat', 10, 1, 0.15, '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(6, 2, 1, 1, 'jaraktempuh', 72.864347437774, 0.73853673775011, 0.18463418443753, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(7, 2, 2, 1, 'jaraktempuh', 53.812997454984, 1, 0.25, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(8, 2, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(9, 2, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(10, 2, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(11, 2, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(12, 2, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(13, 2, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(14, 2, 1, 5, 'peringkat', 10, 0.66666666666667, 0.1, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(15, 2, 2, 5, 'peringkat', 15, 1, 0.15, '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(16, 3, 2, 1, 'jaraktempuh', 52.401148859587, 1, 0.25, '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(17, 3, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(18, 3, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(19, 3, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(20, 3, 2, 5, 'peringkat', 15, 1, 0.15, '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(21, 4, 2, 1, 'jaraktempuh', 52.510751364142, 1, 0.25, '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(22, 4, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(23, 4, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(24, 4, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(25, 4, 2, 5, 'peringkat', 15, 1, 0.15, '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(26, 5, 1, 1, 'jaraktempuh', 71.076098151562, 0.73236868696884, 0.18309217174221, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(27, 5, 2, 1, 'jaraktempuh', 52.053908678128, 1, 0.25, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(28, 5, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(29, 5, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(30, 5, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(31, 5, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(32, 5, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(33, 5, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(34, 5, 1, 5, 'peringkat', 10, 0.66666666666667, 0.1, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(35, 5, 2, 5, 'peringkat', 15, 1, 0.15, '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(36, 6, 2, 1, 'jaraktempuh', 52.516302966658, 1, 0.25, '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(37, 6, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(38, 6, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(39, 6, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(40, 6, 2, 5, 'peringkat', 15, 1, 0.15, '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(41, 7, 1, 1, 'jaraktempuh', 71.641473772419, 1, 0.25, '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(42, 7, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(43, 7, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(44, 7, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(45, 7, 1, 5, 'peringkat', 10, 1, 0.15, '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(46, 8, 1, 1, 'jaraktempuh', 71.275868470143, 1, 0.25, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(47, 8, 4, 1, 'jaraktempuh', 114.42349986418, 0.62291285054857, 0.15572821263714, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(48, 8, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(49, 8, 4, 2, 'biaya', 30, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(50, 8, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(51, 8, 4, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(52, 8, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(53, 8, 4, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(54, 8, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(55, 8, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(56, 9, 5, 1, 'jaraktempuh', 51.190193641133, 1, 0.25, '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(57, 9, 5, 2, 'biaya', 30, 1, 0.2, '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(58, 9, 5, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(59, 9, 5, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(60, 9, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(61, 10, 1, 1, 'jaraktempuh', 71.487581097272, 0.71481380598389, 0.17870345149597, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(62, 10, 2, 1, 'jaraktempuh', 52.430161823362, 0.97463574682224, 0.24365893670556, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(63, 10, 4, 1, 'jaraktempuh', 114.65883786949, 0.44567266574678, 0.1114181664367, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(64, 10, 5, 1, 'jaraktempuh', 51.100309924723, 1, 0.25, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(65, 10, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(66, 10, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(67, 10, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(68, 10, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(69, 10, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(70, 10, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(71, 10, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(72, 10, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(73, 10, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(74, 10, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(75, 10, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(76, 10, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(77, 10, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(78, 10, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(79, 10, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(80, 10, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(81, 11, 1, 1, 'jaraktempuh', 71.391091069987, 0.71634670409596, 0.17908667602399, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(82, 11, 2, 1, 'jaraktempuh', 52.327472567744, 0.97732166833763, 0.24433041708441, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(83, 11, 4, 1, 'jaraktempuh', 114.5485587656, 0.44645496495902, 0.11161374123975, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(84, 11, 5, 1, 'jaraktempuh', 51.1407727898, 1, 0.25, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(85, 11, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(86, 11, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(87, 11, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(88, 11, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(89, 11, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(90, 11, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(91, 11, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(92, 11, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(93, 11, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(94, 11, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(95, 11, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(96, 11, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(97, 11, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(98, 11, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(99, 11, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(100, 11, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(101, 12, 1, 1, 'jaraktempuh', 71.447989516677, 0.71659542712768, 0.17914885678192, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(102, 12, 2, 1, 'jaraktempuh', 52.381872814054, 0.97742405558629, 0.24435601389657, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(103, 12, 4, 1, 'jaraktempuh', 114.59919857229, 0.44676841725747, 0.11169210431437, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(104, 12, 5, 1, 'jaraktempuh', 51.199302565118, 1, 0.25, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(105, 12, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(106, 12, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(107, 12, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(108, 12, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(109, 12, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(110, 12, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(111, 12, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(112, 12, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(113, 12, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(114, 12, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(115, 12, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(116, 12, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(117, 12, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(118, 12, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(119, 12, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(120, 12, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(121, 13, 1, 1, 'jaraktempuh', 71.447989516677, 0.71659542712768, 0.17914885678192, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(122, 13, 2, 1, 'jaraktempuh', 52.381872814054, 0.97742405558629, 0.24435601389657, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(123, 13, 4, 1, 'jaraktempuh', 114.59919857229, 0.44676841725747, 0.11169210431437, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(124, 13, 5, 1, 'jaraktempuh', 51.199302565118, 1, 0.25, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(125, 13, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(126, 13, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(127, 13, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(128, 13, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(129, 13, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(130, 13, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(131, 13, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(132, 13, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(133, 13, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(134, 13, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(135, 13, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(136, 13, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(137, 13, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(138, 13, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(139, 13, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(140, 13, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(141, 14, 1, 1, 'jaraktempuh', 71.424654669118, 0.71431379690795, 0.17857844922699, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(142, 14, 2, 1, 'jaraktempuh', 52.371229697591, 0.97419168051125, 0.24354792012781, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(143, 14, 4, 1, 'jaraktempuh', 114.60556984038, 0.44517571301811, 0.11129392825453, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(144, 14, 5, 1, 'jaraktempuh', 51.019616269536, 1, 0.25, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(145, 14, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(146, 14, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(147, 14, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(148, 14, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(149, 14, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(150, 14, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(151, 14, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(152, 14, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(153, 14, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(154, 14, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(155, 14, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(156, 14, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(157, 14, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(158, 14, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(159, 14, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(160, 14, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(161, 15, 1, 1, 'jaraktempuh', 71.37243586669, 0.71590426981776, 0.17897606745444, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(162, 15, 2, 1, 'jaraktempuh', 52.311564644893, 0.97675976490307, 0.24418994122577, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(163, 15, 4, 1, 'jaraktempuh', 114.53645160185, 0.44610978312718, 0.11152744578179, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(164, 15, 5, 1, 'jaraktempuh', 51.095831584258, 1, 0.25, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(165, 15, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(166, 15, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(167, 15, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(168, 15, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(169, 15, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(170, 15, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(171, 15, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(172, 15, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(173, 15, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(174, 15, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(175, 15, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(176, 15, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(177, 15, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(178, 15, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(179, 15, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(180, 15, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(181, 16, 1, 1, 'jaraktempuh', 71.080167424533, 0.66689154514573, 0.16672288628643, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(182, 16, 2, 1, 'jaraktempuh', 52.325920909214, 0.90591358659903, 0.22647839664976, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(183, 16, 4, 1, 'jaraktempuh', 114.82238884508, 0.41283553808414, 0.10320888452103, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(184, 16, 5, 1, 'jaraktempuh', 47.402762682964, 1, 0.25, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(185, 16, 1, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(186, 16, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(187, 16, 4, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(188, 16, 5, 2, 'biaya', 30, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(189, 16, 1, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(190, 16, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(191, 16, 4, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(192, 16, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(193, 16, 1, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(194, 16, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(195, 16, 4, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(196, 16, 5, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(197, 16, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(198, 16, 2, 5, 'peringkat', 15, 0.6, 0.09, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(199, 16, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(200, 16, 5, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(201, 17, 1, 1, 'jaraktempuh', 71.448980934704, 1, 0.25, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(202, 17, 4, 1, 'jaraktempuh', 114.61489294587, 0.62338304471872, 0.15584576117968, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(203, 17, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(204, 17, 4, 2, 'biaya', 30, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(205, 17, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(206, 17, 4, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(207, 17, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(208, 17, 4, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(209, 17, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(210, 17, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(211, 18, 1, 1, 'jaraktempuh', 71.677189290089, 1, 0.25, '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(212, 18, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(213, 18, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(214, 18, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(215, 18, 1, 5, 'peringkat', 10, 1, 0.15, '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(216, 19, 1, 1, 'jaraktempuh', 71.455342493509, 1, 0.25, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(217, 19, 4, 1, 'jaraktempuh', 114.6211677179, 0.62340441923759, 0.1558511048094, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(218, 19, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(219, 19, 4, 2, 'biaya', 30, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(220, 19, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(221, 19, 4, 3, 'fasilitas', 10, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(222, 19, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(223, 19, 4, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(224, 19, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(225, 19, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(226, 20, 2, 1, 'jaraktempuh', 47.521459330196, 0.6618713744316, 0.1654678436079, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(227, 20, 3, 1, 'jaraktempuh', 31.453093601872, 1, 0.25, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(228, 20, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(229, 20, 3, 2, 'biaya', 30, 0.5, 0.1, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(230, 20, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(231, 20, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(232, 20, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(233, 20, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(234, 20, 2, 5, 'peringkat', 15, 0.5, 0.075, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(235, 20, 3, 5, 'peringkat', 30, 1, 0.15, '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(236, 21, 1, 1, 'jaraktempuh', 66.637921692885, 1, 0.25, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(237, 21, 4, 1, 'jaraktempuh', 109.6411877528, 0.60778182960884, 0.15194545740221, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(238, 21, 1, 2, 'biaya', 30, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(239, 21, 4, 2, 'biaya', 30, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(240, 21, 1, 3, 'fasilitas', 10, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(241, 21, 4, 3, 'fasilitas', 10, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(242, 21, 1, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(243, 21, 4, 4, 'aksebilitas', 10, 1, 0.2, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(244, 21, 1, 5, 'peringkat', 10, 0.4, 0.06, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(245, 21, 4, 5, 'peringkat', 25, 1, 0.15, '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(246, 22, 2, 1, 'jaraktempuh', 51.046536821033, 0.67744144419745, 0.16936036104936, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(247, 22, 3, 1, 'jaraktempuh', 34.581039625319, 1, 0.25, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(248, 22, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(249, 22, 3, 2, 'biaya', 30, 0.5, 0.1, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(250, 22, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(251, 22, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(252, 22, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(253, 22, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(254, 22, 2, 5, 'peringkat', 15, 0.5, 0.075, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(255, 22, 3, 5, 'peringkat', 30, 1, 0.15, '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(256, 23, 2, 1, 'jaraktempuh', 52.663993339132, 0.66717866189306, 0.16679466547327, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(257, 23, 3, 1, 'jaraktempuh', 35.136292605947, 1, 0.25, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(258, 23, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(259, 23, 3, 2, 'biaya', 30, 0.5, 0.1, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(260, 23, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(261, 23, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(262, 23, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(263, 23, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(264, 23, 2, 5, 'peringkat', 15, 0.5, 0.075, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(265, 23, 3, 5, 'peringkat', 30, 1, 0.15, '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(266, 24, 2, 1, 'jaraktempuh', 51.982732378009, 0.68017989834412, 0.17004497458603, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(267, 24, 3, 1, 'jaraktempuh', 35.357609624524, 1, 0.25, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(268, 24, 2, 2, 'biaya', 15, 1, 0.2, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(269, 24, 3, 2, 'biaya', 30, 0.5, 0.1, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(270, 24, 2, 3, 'fasilitas', 30, 1, 0.2, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(271, 24, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(272, 24, 2, 4, 'aksebilitas', 20, 1, 0.2, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(273, 24, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(274, 24, 2, 5, 'peringkat', 15, 0.5, 0.075, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(275, 24, 3, 5, 'peringkat', 30, 1, 0.15, '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(276, 25, 2, 1, 'jaraktempuh', 50.17945425968, 0.67196692813034, 0.16799173203258, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(277, 25, 3, 1, 'jaraktempuh', 33.718933734134, 1, 0.25, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(278, 25, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(279, 25, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(280, 25, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(281, 25, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(282, 25, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(283, 25, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(284, 25, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(285, 25, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(286, 26, 3, 1, 'jaraktempuh', 33.569868449197, 1, 0.25, '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(287, 26, 3, 2, 'biaya', 30, 1, 0.2, '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(288, 26, 3, 3, 'fasilitas', 10, 1, 0.2, '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(289, 26, 3, 4, 'aksebilitas', 10, 1, 0.2, '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(290, 26, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(291, 27, 2, 1, 'jaraktempuh', 50.000879668707, 0.66728087846243, 0.16682021961561, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(292, 27, 3, 1, 'jaraktempuh', 33.364630909229, 1, 0.25, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(293, 27, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(294, 27, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(295, 27, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(296, 27, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(297, 27, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(298, 27, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(299, 27, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(300, 27, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(301, 28, 2, 1, 'jaraktempuh', 50.038155197533, 0.66840890589649, 0.16710222647412, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(302, 28, 3, 1, 'jaraktempuh', 33.445948568662, 1, 0.25, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(303, 28, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(304, 28, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(305, 28, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(306, 28, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(307, 28, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(308, 28, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(309, 28, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(310, 28, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(311, 29, 5, 1, 'jaraktempuh', 51.538612258985, 1, 0.25, '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(312, 29, 5, 2, 'biaya', 30, 1, 0.2, '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(313, 29, 5, 3, 'fasilitas', 10, 1, 0.2, '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(314, 29, 5, 4, 'aksebilitas', 10, 1, 0.2, '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(315, 29, 5, 5, 'peringkat', 25, 1, 0.15, '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(316, 30, 2, 1, 'jaraktempuh', 50.089900812895, 0.66844284955563, 0.16711071238891, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(317, 30, 3, 1, 'jaraktempuh', 33.482236033331, 1, 0.25, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(318, 30, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(319, 30, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(320, 30, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(321, 30, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(322, 30, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(323, 30, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(324, 30, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(325, 30, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(326, 31, 2, 1, 'jaraktempuh', 50.089900812895, 0.66844284955563, 0.16711071238891, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(327, 31, 3, 1, 'jaraktempuh', 33.482236033331, 1, 0.25, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(328, 31, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(329, 31, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(330, 31, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(331, 31, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(332, 31, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(333, 31, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(334, 31, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(335, 31, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(336, 32, 5, 1, 'jaraktempuh', 52.114364939888, 1, 0.25, '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(337, 32, 5, 2, 'biaya', 30, 1, 0.2, '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(338, 32, 5, 3, 'fasilitas', 10, 1, 0.2, '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(339, 32, 5, 4, 'aksebilitas', 10, 1, 0.2, '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(340, 32, 5, 5, 'peringkat', 25, 1, 0.15, '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(341, 33, 2, 1, 'jaraktempuh', 52.621178329201, 0.66847891869633, 0.16711972967408, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(342, 33, 3, 1, 'jaraktempuh', 35.176148390031, 1, 0.25, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(343, 33, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(344, 33, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(345, 33, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(346, 33, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(347, 33, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(348, 33, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(349, 33, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(350, 33, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(351, 34, 2, 1, 'jaraktempuh', 52.638012296209, 0.67144786520943, 0.16786196630236, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(352, 34, 3, 1, 'jaraktempuh', 35.343680985158, 1, 0.25, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(353, 34, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(354, 34, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(355, 34, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(356, 34, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(357, 34, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(358, 34, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(359, 34, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(360, 34, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(361, 35, 2, 1, 'jaraktempuh', 53.054725400517, 0.67368483930768, 0.16842120982692, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(362, 35, 3, 1, 'jaraktempuh', 35.742164155961, 1, 0.25, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(363, 35, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(364, 35, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(365, 35, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(366, 35, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(367, 35, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(368, 35, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(369, 35, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(370, 35, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(371, 36, 2, 1, 'jaraktempuh', 53.004012442634, 0.66843993223591, 0.16710998305898, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(372, 36, 3, 1, 'jaraktempuh', 35.429998485385, 1, 0.25, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(373, 36, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(374, 36, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(375, 36, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(376, 36, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(377, 36, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(378, 36, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(379, 36, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(380, 36, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(381, 37, 2, 1, 'jaraktempuh', 52.932033399208, 0.66759610150065, 0.16689902537516, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(382, 37, 3, 1, 'jaraktempuh', 35.337219141814, 1, 0.25, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(383, 37, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(384, 37, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(385, 37, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(386, 37, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(387, 37, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(388, 37, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(389, 37, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(390, 37, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(391, 38, 2, 1, 'jaraktempuh', 53.063201264201, 0.66899825475925, 0.16724956368981, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(392, 38, 3, 1, 'jaraktempuh', 35.499189037689, 1, 0.25, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(393, 38, 6, 1, 'jaraktempuh', 104.81408277344, 0.33868720784803, 0.084671801962008, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(394, 38, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(395, 38, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(396, 38, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(397, 38, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(398, 38, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(399, 38, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(400, 38, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(401, 38, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(402, 38, 6, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(403, 38, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(404, 38, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(405, 38, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(406, 39, 2, 1, 'jaraktempuh', 53.098587169268, 0.66673408381424, 0.16668352095356, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(407, 39, 3, 1, 'jaraktempuh', 35.402637868132, 1, 0.25, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(408, 39, 6, 1, 'jaraktempuh', 104.76970784624, 0.33790910174238, 0.084477275435594, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(409, 39, 10, 1, 'jaraktempuh', 77.741177721901, 0.45539106694236, 0.11384776673559, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(410, 39, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(411, 39, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(412, 39, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(413, 39, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(414, 39, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(415, 39, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(416, 39, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(417, 39, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(418, 39, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(419, 39, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(420, 39, 6, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(421, 39, 10, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(422, 39, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(423, 39, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(424, 39, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(425, 39, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(426, 40, 2, 1, 'jaraktempuh', 50.730628011355, 0.66831626924581, 0.16707906731145, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(427, 40, 3, 1, 'jaraktempuh', 33.904104049046, 1, 0.25, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(428, 40, 6, 1, 'jaraktempuh', 102.83927072726, 0.32968051804805, 0.082420129512013, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(429, 40, 10, 1, 'jaraktempuh', 75.242749983787, 0.45059629075694, 0.11264907268923, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(430, 40, 2, 2, 'biaya', 15, 1, 0.2, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(431, 40, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(432, 40, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(433, 40, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(434, 40, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(435, 40, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(436, 40, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(437, 40, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(438, 40, 2, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(439, 40, 3, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(440, 40, 6, 4, 'aksebilitas', 10, 0.5, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(441, 40, 10, 4, 'aksebilitas', 20, 1, 0.2, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(442, 40, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(443, 40, 3, 5, 'peringkat', 30, 1, 0.15, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(444, 40, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(445, 40, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(446, 41, 19, 1, 'jaraktempuh', 40.237743045422, 1, 0.25, '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(447, 41, 19, 2, 'biaya', 30, 1, 0.2, '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(448, 41, 19, 3, 'fasilitas', 20, 1, 0.2, '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(449, 41, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(450, 41, 19, 5, 'peringkat', 25, 1, 0.15, '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(451, 42, 17, 1, 'jaraktempuh', 4.7638464988766, 1, 0.25, '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(452, 42, 17, 2, 'biaya', 30, 1, 0.2, '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(453, 42, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(454, 42, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(455, 42, 17, 5, 'peringkat', 25, 1, 0.15, '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(456, 43, 3, 1, 'jaraktempuh', 35.171419441964, 1, 0.25, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(457, 43, 5, 1, 'jaraktempuh', 51.468560186081, 0.68335736058681, 0.1708393401467, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(458, 43, 9, 1, 'jaraktempuh', 72.631119716154, 0.48424724249627, 0.12106181062407, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(459, 43, 10, 1, 'jaraktempuh', 77.354129966619, 0.45468056401309, 0.11367014100327, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(460, 43, 13, 1, 'jaraktempuh', 99.801944880595, 0.35241216475334, 0.088103041188335, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(461, 43, 16, 1, 'jaraktempuh', 164.88572434679, 0.21330785052071, 0.053326962630179, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(462, 43, 18, 1, 'jaraktempuh', 71.680707722557, 0.49066785972729, 0.12266696493182, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(463, 43, 3, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(464, 43, 5, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(465, 43, 9, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(466, 43, 10, 2, 'biaya', 25, 1, 0.2, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(467, 43, 13, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(468, 43, 16, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(469, 43, 18, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(470, 43, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(471, 43, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(472, 43, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(473, 43, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(474, 43, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(475, 43, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(476, 43, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(477, 43, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(478, 43, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(479, 43, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(480, 43, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(481, 43, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(482, 43, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(483, 43, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(484, 43, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(485, 43, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(486, 43, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(487, 43, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(488, 43, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(489, 43, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(490, 43, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(491, 44, 2, 1, 'jaraktempuh', 52.880349252694, 0.087420726556532, 0.021855181639133, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(492, 44, 3, 1, 'jaraktempuh', 35.201174296438, 0.13132625955327, 0.032831564888316, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(493, 44, 5, 1, 'jaraktempuh', 51.331516165133, 0.090058484486648, 0.022514621121662, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(494, 44, 6, 1, 'jaraktempuh', 104.55565025509, 0.044214143768939, 0.011053535942235, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(495, 44, 9, 1, 'jaraktempuh', 72.772707562776, 0.063524344593691, 0.015881086148423, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(496, 44, 10, 1, 'jaraktempuh', 77.526337738883, 0.059629265189901, 0.014907316297475, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(497, 44, 11, 1, 'jaraktempuh', 65.738525602292, 0.07032160380659, 0.017580400951647, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(498, 44, 12, 1, 'jaraktempuh', 161.48760149046, 0.028626585010657, 0.0071566462526643, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(499, 44, 13, 1, 'jaraktempuh', 99.85228088698, 0.046296774707292, 0.011574193676823, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(500, 44, 16, 1, 'jaraktempuh', 165.06286592346, 0.028006532701167, 0.0070016331752917, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(501, 44, 17, 1, 'jaraktempuh', 4.6228385522337, 1, 0.25, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(502, 44, 18, 1, 'jaraktempuh', 71.815082861092, 0.064371415697945, 0.016092853924486, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(503, 44, 19, 1, 'jaraktempuh', 42.289398590165, 0.10931436024982, 0.027328590062456, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(504, 44, 2, 2, 'biaya', 15, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(505, 44, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(506, 44, 5, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(507, 44, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(508, 44, 9, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(509, 44, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(510, 44, 11, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(511, 44, 12, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(512, 44, 13, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(513, 44, 16, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(514, 44, 17, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(515, 44, 18, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28');
INSERT INTO `history_alternatif_values` (`id`, `history_id`, `alternative_id`, `criteria_id`, `name`, `nilai_awal`, `nilai_normalisasi`, `nilai_preferensi`, `created_at`, `updated_at`) VALUES
(516, 44, 19, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(517, 44, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(518, 44, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(519, 44, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(520, 44, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(521, 44, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(522, 44, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(523, 44, 11, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(524, 44, 12, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(525, 44, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(526, 44, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(527, 44, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(528, 44, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(529, 44, 19, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(530, 44, 2, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(531, 44, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(532, 44, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(533, 44, 6, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(534, 44, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(535, 44, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(536, 44, 11, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(537, 44, 12, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(538, 44, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(539, 44, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(540, 44, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(541, 44, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(542, 44, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(543, 44, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(544, 44, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(545, 44, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(546, 44, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(547, 44, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(548, 44, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(549, 44, 11, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(550, 44, 12, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(551, 44, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(552, 44, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(553, 44, 17, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(554, 44, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(555, 44, 19, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(556, 45, 2, 1, 'jaraktempuh', 52.849706832405, 0.084180229424439, 0.02104505735611, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(557, 45, 3, 1, 'jaraktempuh', 35.367902105729, 0.12578920946079, 0.031447302365196, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(558, 45, 5, 1, 'jaraktempuh', 51.698930230981, 0.086054013618644, 0.021513503404661, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(559, 45, 6, 1, 'jaraktempuh', 104.64423155355, 0.042514531189325, 0.010628632797331, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(560, 45, 9, 1, 'jaraktempuh', 72.753622536246, 0.061150225804216, 0.015287556451054, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(561, 45, 10, 1, 'jaraktempuh', 77.446986487091, 0.057444461662917, 0.014361115415729, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(562, 45, 11, 1, 'jaraktempuh', 66.130800255111, 0.067274256912116, 0.016818564228029, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(563, 45, 12, 1, 'jaraktempuh', 161.11418874996, 0.027613337352121, 0.0069033343380304, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(564, 45, 13, 1, 'jaraktempuh', 99.987683934758, 0.044494484431393, 0.011123621107848, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(565, 45, 16, 1, 'jaraktempuh', 164.97295719303, 0.026967452859323, 0.0067418632148307, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(566, 45, 17, 1, 'jaraktempuh', 4.4489004461661, 1, 0.25, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(567, 45, 18, 1, 'jaraktempuh', 71.809454533258, 0.061954243700677, 0.015488560925169, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(568, 45, 19, 1, 'jaraktempuh', 42.47778354954, 0.10473475954737, 0.026183689886842, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(569, 45, 2, 2, 'biaya', 15, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(570, 45, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(571, 45, 5, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(572, 45, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(573, 45, 9, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(574, 45, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(575, 45, 11, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(576, 45, 12, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(577, 45, 13, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(578, 45, 16, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(579, 45, 17, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(580, 45, 18, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(581, 45, 19, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(582, 45, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(583, 45, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(584, 45, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(585, 45, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(586, 45, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(587, 45, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(588, 45, 11, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(589, 45, 12, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(590, 45, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(591, 45, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(592, 45, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(593, 45, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(594, 45, 19, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(595, 45, 2, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(596, 45, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(597, 45, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(598, 45, 6, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(599, 45, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(600, 45, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(601, 45, 11, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(602, 45, 12, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(603, 45, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(604, 45, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(605, 45, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(606, 45, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(607, 45, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(608, 45, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(609, 45, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(610, 45, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(611, 45, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(612, 45, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(613, 45, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(614, 45, 11, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(615, 45, 12, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(616, 45, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(617, 45, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(618, 45, 17, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(619, 45, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(620, 45, 19, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(621, 46, 2, 1, 'jaraktempuh', 53.029665602748, 0.084283436109512, 0.021070859027378, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(622, 46, 3, 1, 'jaraktempuh', 35.35660605576, 0.12641265470134, 0.031603163675334, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(623, 46, 5, 1, 'jaraktempuh', 51.439174717483, 0.086889466195478, 0.021722366548869, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(624, 46, 6, 1, 'jaraktempuh', 104.71293829674, 0.042683573829931, 0.010670893457483, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(625, 46, 9, 1, 'jaraktempuh', 72.923380261303, 0.061290664485417, 0.015322666121354, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(626, 46, 10, 1, 'jaraktempuh', 77.668906096978, 0.057545839864891, 0.014386459966223, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(627, 46, 11, 1, 'jaraktempuh', 65.828903262469, 0.067896048866519, 0.01697401221663, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(628, 46, 12, 1, 'jaraktempuh', 161.38395595844, 0.027694961411709, 0.0069237403529274, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(629, 46, 13, 1, 'jaraktempuh', 100.00914167509, 0.044691138808674, 0.011172784702169, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(630, 46, 16, 1, 'jaraktempuh', 165.20376056204, 0.027054604674447, 0.0067636511686117, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(631, 46, 17, 1, 'jaraktempuh', 4.469522432738, 1, 0.25, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(632, 46, 18, 1, 'jaraktempuh', 71.967132600164, 0.062105050892743, 0.015526262723186, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(633, 46, 19, 1, 'jaraktempuh', 42.443140301564, 0.10530612016409, 0.026326530041023, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(634, 46, 2, 2, 'biaya', 15, 1, 0.2, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(635, 46, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(636, 46, 5, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(637, 46, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(638, 46, 9, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(639, 46, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(640, 46, 11, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(641, 46, 12, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(642, 46, 13, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(643, 46, 16, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(644, 46, 17, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(645, 46, 18, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(646, 46, 19, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(647, 46, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(648, 46, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(649, 46, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(650, 46, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(651, 46, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(652, 46, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(653, 46, 11, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(654, 46, 12, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(655, 46, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(656, 46, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(657, 46, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(658, 46, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(659, 46, 19, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(660, 46, 2, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(661, 46, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(662, 46, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(663, 46, 6, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(664, 46, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(665, 46, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(666, 46, 11, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(667, 46, 12, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(668, 46, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(669, 46, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(670, 46, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(671, 46, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(672, 46, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(673, 46, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(674, 46, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(675, 46, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(676, 46, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(677, 46, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(678, 46, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(679, 46, 11, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(680, 46, 12, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(681, 46, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(682, 46, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(683, 46, 17, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(684, 46, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(685, 46, 19, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(686, 47, 2, 1, 'jaraktempuh', 52.302133814575, 0.1065371790531, 0.026634294763276, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(687, 47, 3, 1, 'jaraktempuh', 34.29947104015, 0.16245503578, 0.040613758945001, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(688, 47, 5, 1, 'jaraktempuh', 50.327784428603, 0.11071661227145, 0.027679153067862, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(689, 47, 6, 1, 'jaraktempuh', 103.75948792923, 0.053702286954841, 0.01342557173871, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(690, 47, 9, 1, 'jaraktempuh', 72.168734903316, 0.077209636590245, 0.019302409147561, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(691, 47, 10, 1, 'jaraktempuh', 77.047207586232, 0.072320879232727, 0.018080219808182, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(692, 47, 11, 1, 'jaraktempuh', 64.771073227588, 0.086027936815001, 0.02150698420375, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(693, 47, 12, 1, 'jaraktempuh', 162.48524675342, 0.034293093720187, 0.0085732734300467, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(694, 47, 13, 1, 'jaraktempuh', 98.987516409635, 0.056291156674786, 0.014072789168697, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(695, 47, 16, 1, 'jaraktempuh', 164.6029410994, 0.03385189692144, 0.0084629742303601, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(696, 47, 17, 1, 'jaraktempuh', 5.5721217950627, 1, 0.25, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(697, 47, 18, 1, 'jaraktempuh', 71.185030085807, 0.078276595350822, 0.019569148837705, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(698, 47, 19, 1, 'jaraktempuh', 41.360752404875, 0.1347200297644, 0.0336800074411, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(699, 47, 2, 2, 'biaya', 15, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(700, 47, 3, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(701, 47, 5, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(702, 47, 6, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(703, 47, 9, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(704, 47, 10, 2, 'biaya', 25, 0.6, 0.12, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(705, 47, 11, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(706, 47, 12, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(707, 47, 13, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(708, 47, 16, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(709, 47, 17, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(710, 47, 18, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(711, 47, 19, 2, 'biaya', 30, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(712, 47, 2, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(713, 47, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(714, 47, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(715, 47, 6, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(716, 47, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(717, 47, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(718, 47, 11, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(719, 47, 12, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(720, 47, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(721, 47, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(722, 47, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(723, 47, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(724, 47, 19, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(725, 47, 2, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(726, 47, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(727, 47, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(728, 47, 6, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(729, 47, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(730, 47, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(731, 47, 11, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(732, 47, 12, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(733, 47, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(734, 47, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(735, 47, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(736, 47, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(737, 47, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(738, 47, 2, 5, 'peringkat', 15, 0.5, 0.075, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(739, 47, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(740, 47, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(741, 47, 6, 5, 'peringkat', 10, 0.33333333333333, 0.05, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(742, 47, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(743, 47, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(744, 47, 11, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(745, 47, 12, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(746, 47, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(747, 47, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(748, 47, 17, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(749, 47, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(750, 47, 19, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(751, 48, 12, 1, 'jaraktempuh', 160.93109607413, 1, 0.25, '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(752, 48, 12, 2, 'biaya', 30, 1, 0.2, '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(753, 48, 12, 3, 'fasilitas', 10, 1, 0.2, '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(754, 48, 12, 4, 'aksebilitas', 10, 1, 0.2, '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(755, 48, 12, 5, 'peringkat', 25, 1, 0.15, '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(756, 49, 12, 1, 'jaraktempuh', 159.77247281328, 1, 0.25, '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(757, 49, 12, 2, 'biaya', 30, 1, 0.2, '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(758, 49, 12, 3, 'fasilitas', 10, 1, 0.2, '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(759, 49, 12, 4, 'aksebilitas', 10, 1, 0.2, '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(760, 49, 12, 5, 'peringkat', 25, 1, 0.15, '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(761, 50, 3, 1, 'jaraktempuh', 34.374296759425, 0.10086301491936, 0.025215753729841, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(762, 50, 5, 1, 'jaraktempuh', 52.245416476018, 0.066361710571873, 0.016590427642968, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(763, 50, 9, 1, 'jaraktempuh', 70.846190269684, 0.048938343666619, 0.012234585916655, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(764, 50, 10, 1, 'jaraktempuh', 75.336390626185, 0.046021519986164, 0.011505379996541, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(765, 50, 13, 1, 'jaraktempuh', 98.76665951635, 0.035103902712377, 0.0087759756780944, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(766, 50, 16, 1, 'jaraktempuh', 162.82471780546, 0.021293420640415, 0.0053233551601037, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(767, 50, 18, 1, 'jaraktempuh', 69.952818469708, 0.049563338300512, 0.012390834575128, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(768, 50, 25, 1, 'jaraktempuh', 3.4670952068885, 1, 0.25, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(769, 50, 3, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(770, 50, 5, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(771, 50, 9, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(772, 50, 10, 2, 'biaya', 25, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(773, 50, 13, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(774, 50, 16, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(775, 50, 18, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(776, 50, 25, 2, 'biaya', 30, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(777, 50, 3, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(778, 50, 5, 3, 'fasilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(779, 50, 9, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(780, 50, 10, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(781, 50, 13, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(782, 50, 16, 3, 'fasilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(783, 50, 18, 3, 'fasilitas', 15, 0.5, 0.1, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(784, 50, 25, 3, 'fasilitas', 25, 0.83333333333333, 0.16666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(785, 50, 3, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(786, 50, 5, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(787, 50, 9, 4, 'aksebilitas', 10, 0.33333333333333, 0.066666666666667, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(788, 50, 10, 4, 'aksebilitas', 20, 0.66666666666667, 0.13333333333333, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(789, 50, 13, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(790, 50, 16, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(791, 50, 18, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(792, 50, 25, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(793, 50, 3, 5, 'peringkat', 30, 1, 0.15, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(794, 50, 5, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(795, 50, 9, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(796, 50, 10, 5, 'peringkat', 20, 0.66666666666667, 0.1, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(797, 50, 13, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(798, 50, 16, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(799, 50, 18, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(800, 50, 25, 5, 'peringkat', 25, 0.83333333333333, 0.125, '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(801, 51, 19, 1, 'jaraktempuh', 41.665866405491, 1, 0.25, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(802, 51, 21, 1, 'jaraktempuh', 70.556176765978, 0.590534639422, 0.1476336598555, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(803, 51, 19, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(804, 51, 21, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(805, 51, 19, 3, 'fasilitas', 20, 0.8, 0.16, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(806, 51, 21, 3, 'fasilitas', 25, 1, 0.2, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(807, 51, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(808, 51, 21, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(809, 51, 19, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(810, 51, 21, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(811, 52, 19, 1, 'jaraktempuh', 41.876458527785, 1, 0.25, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(812, 52, 21, 1, 'jaraktempuh', 70.348707020016, 0.59526976829681, 0.1488174420742, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(813, 52, 19, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(814, 52, 21, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(815, 52, 19, 3, 'fasilitas', 20, 0.8, 0.16, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(816, 52, 21, 3, 'fasilitas', 25, 1, 0.2, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(817, 52, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(818, 52, 21, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(819, 52, 19, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(820, 52, 21, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(821, 53, 17, 1, 'jaraktempuh', 5.5100897459862, 1, 0.25, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(822, 53, 23, 1, 'jaraktempuh', 143.76716085504, 0.03832648369221, 0.0095816209230525, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(823, 53, 24, 1, 'jaraktempuh', 41.618865446904, 0.13239404022235, 0.033098510055589, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(824, 53, 17, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(825, 53, 23, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(826, 53, 24, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(827, 53, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(828, 53, 23, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(829, 53, 24, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(830, 53, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(831, 53, 23, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(832, 53, 24, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(833, 53, 17, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(834, 53, 23, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(835, 53, 24, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(836, 54, 17, 1, 'jaraktempuh', 6.0529530646138, 1, 0.25, '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(837, 54, 23, 1, 'jaraktempuh', 143.21566677043, 0.042264601360383, 0.010566150340096, '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(838, 54, 24, 1, 'jaraktempuh', 41.068450243176, 0.14738693641403, 0.036846734103507, '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(839, 54, 17, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(840, 54, 23, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(841, 54, 24, 2, 'biaya', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(842, 54, 17, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(843, 54, 23, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(844, 54, 24, 3, 'fasilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(845, 54, 17, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(846, 54, 23, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(847, 54, 24, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(848, 54, 17, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(849, 54, 23, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(850, 54, 24, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(851, 55, 19, 1, 'jaraktempuh', 41.383260316526, 1, 0.25, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(852, 55, 21, 1, 'jaraktempuh', 70.742731784745, 0.58498250311349, 0.14624562577837, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(853, 55, 19, 2, 'biaya', 30, 1, 0.2, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(854, 55, 21, 2, 'biaya', 30, 1, 0.2, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(855, 55, 19, 3, 'fasilitas', 20, 0.8, 0.16, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(856, 55, 21, 3, 'fasilitas', 25, 1, 0.2, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(857, 55, 19, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(858, 55, 21, 4, 'aksebilitas', 30, 1, 0.2, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(859, 55, 19, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(860, 55, 21, 5, 'peringkat', 25, 1, 0.15, '2025-02-10 23:38:03', '2025-02-10 23:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `history_weight_normalizations`
--

CREATE TABLE `history_weight_normalizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `history_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bobot_normalisasi` varchar(50) DEFAULT NULL,
  `kriteria` varchar(50) DEFAULT NULL,
  `pembagi` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_weight_normalizations`
--

INSERT INTO `history_weight_normalizations` (`id`, `history_id`, `criteria_id`, `bobot_normalisasi`, `kriteria`, `pembagi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '0.25', 'jaraktempuh', '71.259261890647', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(2, 1, 2, '0.2', 'biaya', '30', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(3, 1, 3, '0.2', 'fasilitas', '10', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(4, 1, 4, '0.2', 'aksebilitas', '10', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(5, 1, 5, '0.15', 'peringkat', '10', '2024-12-04 03:15:38', '2024-12-04 03:15:38'),
(6, 2, 1, '0.25', 'jaraktempuh', '53.812997454984', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(7, 2, 2, '0.2', 'biaya', '15', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(8, 2, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(9, 2, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(10, 2, 5, '0.15', 'peringkat', '15', '2024-12-04 03:16:47', '2024-12-04 03:16:47'),
(11, 3, 1, '0.25', 'jaraktempuh', '52.401148859587', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(12, 3, 2, '0.2', 'biaya', '15', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(13, 3, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(14, 3, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(15, 3, 5, '0.15', 'peringkat', '15', '2024-12-04 03:20:22', '2024-12-04 03:20:22'),
(16, 4, 1, '0.25', 'jaraktempuh', '52.510751364142', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(17, 4, 2, '0.2', 'biaya', '15', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(18, 4, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(19, 4, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(20, 4, 5, '0.15', 'peringkat', '15', '2024-12-04 03:29:21', '2024-12-04 03:29:21'),
(21, 5, 1, '0.25', 'jaraktempuh', '52.053908678128', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(22, 5, 2, '0.2', 'biaya', '15', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(23, 5, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(24, 5, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(25, 5, 5, '0.15', 'peringkat', '15', '2024-12-04 03:29:49', '2024-12-04 03:29:49'),
(26, 6, 1, '0.25', 'jaraktempuh', '52.516302966658', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(27, 6, 2, '0.2', 'biaya', '15', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(28, 6, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(29, 6, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(30, 6, 5, '0.15', 'peringkat', '15', '2024-12-04 03:30:17', '2024-12-04 03:30:17'),
(31, 7, 1, '0.25', 'jaraktempuh', '71.641473772419', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(32, 7, 2, '0.2', 'biaya', '30', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(33, 7, 3, '0.2', 'fasilitas', '10', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(34, 7, 4, '0.2', 'aksebilitas', '10', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(35, 7, 5, '0.15', 'peringkat', '10', '2024-12-04 03:30:30', '2024-12-04 03:30:30'),
(36, 8, 1, '0.25', 'jaraktempuh', '71.275868470143', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(37, 8, 2, '0.2', 'biaya', '30', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(38, 8, 3, '0.2', 'fasilitas', '10', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(39, 8, 4, '0.2', 'aksebilitas', '10', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(40, 8, 5, '0.15', 'peringkat', '25', '2024-12-04 03:31:49', '2024-12-04 03:31:49'),
(41, 9, 1, '0.25', 'jaraktempuh', '51.190193641133', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(42, 9, 2, '0.2', 'biaya', '30', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(43, 9, 3, '0.2', 'fasilitas', '10', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(44, 9, 4, '0.2', 'aksebilitas', '10', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(45, 9, 5, '0.15', 'peringkat', '25', '2024-12-04 03:32:31', '2024-12-04 03:32:31'),
(46, 10, 1, '0.25', 'jaraktempuh', '51.100309924723', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(47, 10, 2, '0.2', 'biaya', '15', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(48, 10, 3, '0.2', 'fasilitas', '30', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(49, 10, 4, '0.2', 'aksebilitas', '20', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(50, 10, 5, '0.15', 'peringkat', '25', '2024-12-04 03:43:38', '2024-12-04 03:43:38'),
(51, 11, 1, '0.25', 'jaraktempuh', '51.1407727898', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(52, 11, 2, '0.2', 'biaya', '15', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(53, 11, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(54, 11, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(55, 11, 5, '0.15', 'peringkat', '25', '2024-12-04 04:41:27', '2024-12-04 04:41:27'),
(56, 12, 1, '0.25', 'jaraktempuh', '51.199302565118', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(57, 12, 2, '0.2', 'biaya', '15', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(58, 12, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(59, 12, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(60, 12, 5, '0.15', 'peringkat', '25', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(61, 13, 1, '0.25', 'jaraktempuh', '51.199302565118', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(62, 13, 2, '0.2', 'biaya', '15', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(63, 13, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(64, 13, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(65, 13, 5, '0.15', 'peringkat', '25', '2024-12-04 04:44:59', '2024-12-04 04:44:59'),
(66, 14, 1, '0.25', 'jaraktempuh', '51.019616269536', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(67, 14, 2, '0.2', 'biaya', '15', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(68, 14, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(69, 14, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(70, 14, 5, '0.15', 'peringkat', '25', '2024-12-04 04:45:57', '2024-12-04 04:45:57'),
(71, 15, 1, '0.25', 'jaraktempuh', '51.095831584258', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(72, 15, 2, '0.2', 'biaya', '15', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(73, 15, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(74, 15, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(75, 15, 5, '0.15', 'peringkat', '25', '2024-12-04 04:46:46', '2024-12-04 04:46:46'),
(76, 16, 1, '0.25', 'jaraktempuh', '47.402762682964', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(77, 16, 2, '0.2', 'biaya', '15', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(78, 16, 3, '0.2', 'fasilitas', '30', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(79, 16, 4, '0.2', 'aksebilitas', '20', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(80, 16, 5, '0.15', 'peringkat', '25', '2024-12-04 04:47:17', '2024-12-04 04:47:17'),
(81, 17, 1, '0.25', 'jaraktempuh', '71.448980934704', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(82, 17, 2, '0.2', 'biaya', '30', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(83, 17, 3, '0.2', 'fasilitas', '10', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(84, 17, 4, '0.2', 'aksebilitas', '10', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(85, 17, 5, '0.15', 'peringkat', '25', '2024-12-04 04:47:59', '2024-12-04 04:47:59'),
(86, 18, 1, '0.25', 'jaraktempuh', '71.677189290089', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(87, 18, 2, '0.2', 'biaya', '30', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(88, 18, 3, '0.2', 'fasilitas', '10', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(89, 18, 4, '0.2', 'aksebilitas', '10', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(90, 18, 5, '0.15', 'peringkat', '10', '2024-12-04 04:49:58', '2024-12-04 04:49:58'),
(91, 19, 1, '0.25', 'jaraktempuh', '71.455342493509', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(92, 19, 2, '0.2', 'biaya', '30', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(93, 19, 3, '0.2', 'fasilitas', '10', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(94, 19, 4, '0.2', 'aksebilitas', '10', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(95, 19, 5, '0.15', 'peringkat', '25', '2024-12-04 04:50:33', '2024-12-04 04:50:33'),
(96, 20, 1, '0.25', 'jaraktempuh', '31.453093601872', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(97, 20, 2, '0.2', 'biaya', '15', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(98, 20, 3, '0.2', 'fasilitas', '30', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(99, 20, 4, '0.2', 'aksebilitas', '20', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(100, 20, 5, '0.15', 'peringkat', '30', '2024-12-06 01:46:50', '2024-12-06 01:46:50'),
(101, 21, 1, '0.25', 'jaraktempuh', '66.637921692885', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(102, 21, 2, '0.2', 'biaya', '30', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(103, 21, 3, '0.2', 'fasilitas', '10', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(104, 21, 4, '0.2', 'aksebilitas', '10', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(105, 21, 5, '0.15', 'peringkat', '25', '2024-12-06 01:49:03', '2024-12-06 01:49:03'),
(106, 22, 1, '0.25', 'jaraktempuh', '34.581039625319', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(107, 22, 2, '0.2', 'biaya', '15', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(108, 22, 3, '0.2', 'fasilitas', '30', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(109, 22, 4, '0.2', 'aksebilitas', '20', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(110, 22, 5, '0.15', 'peringkat', '30', '2024-12-09 07:18:42', '2024-12-09 07:18:42'),
(111, 23, 1, '0.25', 'jaraktempuh', '35.136292605947', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(112, 23, 2, '0.2', 'biaya', '15', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(113, 23, 3, '0.2', 'fasilitas', '30', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(114, 23, 4, '0.2', 'aksebilitas', '20', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(115, 23, 5, '0.15', 'peringkat', '30', '2024-12-09 07:22:38', '2024-12-09 07:22:38'),
(116, 24, 1, '0.25', 'jaraktempuh', '35.357609624524', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(117, 24, 2, '0.2', 'biaya', '15', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(118, 24, 3, '0.2', 'fasilitas', '30', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(119, 24, 4, '0.2', 'aksebilitas', '20', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(120, 24, 5, '0.15', 'peringkat', '30', '2024-12-09 07:27:07', '2024-12-09 07:27:07'),
(121, 25, 1, '0.25', 'jaraktempuh', '33.718933734134', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(122, 25, 2, '0.2', 'biaya', '15', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(123, 25, 3, '0.2', 'fasilitas', '30', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(124, 25, 4, '0.2', 'aksebilitas', '20', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(125, 25, 5, '0.15', 'peringkat', '30', '2025-01-13 05:36:15', '2025-01-13 05:36:15'),
(126, 26, 1, '0.25', 'jaraktempuh', '33.569868449197', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(127, 26, 2, '0.2', 'biaya', '30', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(128, 26, 3, '0.2', 'fasilitas', '10', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(129, 26, 4, '0.2', 'aksebilitas', '10', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(130, 26, 5, '0.15', 'peringkat', '30', '2025-01-13 22:13:53', '2025-01-13 22:13:53'),
(131, 27, 1, '0.25', 'jaraktempuh', '33.364630909229', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(132, 27, 2, '0.2', 'biaya', '15', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(133, 27, 3, '0.2', 'fasilitas', '30', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(134, 27, 4, '0.2', 'aksebilitas', '20', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(135, 27, 5, '0.15', 'peringkat', '30', '2025-01-13 22:15:07', '2025-01-13 22:15:07'),
(136, 28, 1, '0.25', 'jaraktempuh', '33.445948568662', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(137, 28, 2, '0.2', 'biaya', '15', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(138, 28, 3, '0.2', 'fasilitas', '30', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(139, 28, 4, '0.2', 'aksebilitas', '20', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(140, 28, 5, '0.15', 'peringkat', '30', '2025-01-13 22:15:53', '2025-01-13 22:15:53'),
(141, 29, 1, '0.25', 'jaraktempuh', '51.538612258985', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(142, 29, 2, '0.2', 'biaya', '30', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(143, 29, 3, '0.2', 'fasilitas', '10', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(144, 29, 4, '0.2', 'aksebilitas', '10', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(145, 29, 5, '0.15', 'peringkat', '25', '2025-01-13 22:16:25', '2025-01-13 22:16:25'),
(146, 30, 1, '0.25', 'jaraktempuh', '33.482236033331', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(147, 30, 2, '0.2', 'biaya', '15', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(148, 30, 3, '0.2', 'fasilitas', '30', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(149, 30, 4, '0.2', 'aksebilitas', '20', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(150, 30, 5, '0.15', 'peringkat', '30', '2025-01-26 03:02:36', '2025-01-26 03:02:36'),
(151, 31, 1, '0.25', 'jaraktempuh', '33.482236033331', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(152, 31, 2, '0.2', 'biaya', '15', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(153, 31, 3, '0.2', 'fasilitas', '30', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(154, 31, 4, '0.2', 'aksebilitas', '20', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(155, 31, 5, '0.15', 'peringkat', '30', '2025-01-26 03:03:09', '2025-01-26 03:03:09'),
(156, 32, 1, '0.25', 'jaraktempuh', '52.114364939888', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(157, 32, 2, '0.2', 'biaya', '30', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(158, 32, 3, '0.2', 'fasilitas', '10', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(159, 32, 4, '0.2', 'aksebilitas', '10', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(160, 32, 5, '0.15', 'peringkat', '25', '2025-01-29 21:54:33', '2025-01-29 21:54:33'),
(161, 33, 1, '0.25', 'jaraktempuh', '35.176148390031', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(162, 33, 2, '0.2', 'biaya', '15', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(163, 33, 3, '0.2', 'fasilitas', '30', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(164, 33, 4, '0.2', 'aksebilitas', '20', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(165, 33, 5, '0.15', 'peringkat', '30', '2025-01-29 21:55:22', '2025-01-29 21:55:22'),
(166, 34, 1, '0.25', 'jaraktempuh', '35.343680985158', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(167, 34, 2, '0.2', 'biaya', '15', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(168, 34, 3, '0.2', 'fasilitas', '30', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(169, 34, 4, '0.2', 'aksebilitas', '20', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(170, 34, 5, '0.15', 'peringkat', '30', '2025-01-29 21:57:27', '2025-01-29 21:57:27'),
(171, 35, 1, '0.25', 'jaraktempuh', '35.742164155961', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(172, 35, 2, '0.2', 'biaya', '15', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(173, 35, 3, '0.2', 'fasilitas', '30', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(174, 35, 4, '0.2', 'aksebilitas', '20', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(175, 35, 5, '0.15', 'peringkat', '30', '2025-01-29 22:03:21', '2025-01-29 22:03:21'),
(176, 36, 1, '0.25', 'jaraktempuh', '35.429998485385', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(177, 36, 2, '0.2', 'biaya', '15', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(178, 36, 3, '0.2', 'fasilitas', '30', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(179, 36, 4, '0.2', 'aksebilitas', '20', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(180, 36, 5, '0.15', 'peringkat', '30', '2025-01-29 22:07:44', '2025-01-29 22:07:44'),
(181, 37, 1, '0.25', 'jaraktempuh', '35.337219141814', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(182, 37, 2, '0.2', 'biaya', '15', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(183, 37, 3, '0.2', 'fasilitas', '30', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(184, 37, 4, '0.2', 'aksebilitas', '20', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(185, 37, 5, '0.15', 'peringkat', '30', '2025-01-29 22:18:43', '2025-01-29 22:18:43'),
(186, 38, 1, '0.25', 'jaraktempuh', '35.499189037689', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(187, 38, 2, '0.2', 'biaya', '15', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(188, 38, 3, '0.2', 'fasilitas', '30', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(189, 38, 4, '0.2', 'aksebilitas', '20', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(190, 38, 5, '0.15', 'peringkat', '30', '2025-01-29 23:15:43', '2025-01-29 23:15:43'),
(191, 39, 1, '0.25', 'jaraktempuh', '35.402637868132', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(192, 39, 2, '0.2', 'biaya', '15', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(193, 39, 3, '0.2', 'fasilitas', '30', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(194, 39, 4, '0.2', 'aksebilitas', '20', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(195, 39, 5, '0.15', 'peringkat', '30', '2025-01-29 23:16:25', '2025-01-29 23:16:25'),
(196, 40, 1, '0.25', 'jaraktempuh', '33.904104049046', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(197, 40, 2, '0.2', 'biaya', '15', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(198, 40, 3, '0.2', 'fasilitas', '30', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(199, 40, 4, '0.2', 'aksebilitas', '20', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(200, 40, 5, '0.15', 'peringkat', '30', '2025-01-29 23:18:18', '2025-01-29 23:18:18'),
(201, 41, 1, '0.25', 'jaraktempuh', '40.237743045422', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(202, 41, 2, '0.2', 'biaya', '30', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(203, 41, 3, '0.2', 'fasilitas', '20', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(204, 41, 4, '0.2', 'aksebilitas', '30', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(205, 41, 5, '0.15', 'peringkat', '25', '2025-02-04 22:02:43', '2025-02-04 22:02:43'),
(206, 42, 1, '0.25', 'jaraktempuh', '4.7638464988766', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(207, 42, 2, '0.2', 'biaya', '30', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(208, 42, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(209, 42, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(210, 42, 5, '0.15', 'peringkat', '25', '2025-02-05 01:00:50', '2025-02-05 01:00:50'),
(211, 43, 1, '0.25', 'jaraktempuh', '35.171419441964', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(212, 43, 2, '0.2', 'biaya', '25', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(213, 43, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(214, 43, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(215, 43, 5, '0.15', 'peringkat', '30', '2025-02-05 01:02:29', '2025-02-05 01:02:29'),
(216, 44, 1, '0.25', 'jaraktempuh', '4.6228385522337', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(217, 44, 2, '0.2', 'biaya', '15', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(218, 44, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(219, 44, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(220, 44, 5, '0.15', 'peringkat', '30', '2025-02-05 01:08:28', '2025-02-05 01:08:28'),
(221, 45, 1, '0.25', 'jaraktempuh', '4.4489004461661', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(222, 45, 2, '0.2', 'biaya', '15', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(223, 45, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(224, 45, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(225, 45, 5, '0.15', 'peringkat', '30', '2025-02-05 01:09:13', '2025-02-05 01:09:13'),
(226, 46, 1, '0.25', 'jaraktempuh', '4.469522432738', '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(227, 46, 2, '0.2', 'biaya', '15', '2025-02-05 01:09:57', '2025-02-05 01:09:57'),
(228, 46, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(229, 46, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(230, 46, 5, '0.15', 'peringkat', '30', '2025-02-05 01:09:58', '2025-02-05 01:09:58'),
(231, 47, 1, '0.25', 'jaraktempuh', '5.5721217950627', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(232, 47, 2, '0.2', 'biaya', '15', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(233, 47, 3, '0.2', 'fasilitas', '30', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(234, 47, 4, '0.2', 'aksebilitas', '30', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(235, 47, 5, '0.15', 'peringkat', '30', '2025-02-05 01:57:58', '2025-02-05 01:57:58'),
(236, 48, 1, '0.25', 'jaraktempuh', '160.93109607413', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(237, 48, 2, '0.2', 'biaya', '30', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(238, 48, 3, '0.2', 'fasilitas', '10', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(239, 48, 4, '0.2', 'aksebilitas', '10', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(240, 48, 5, '0.15', 'peringkat', '25', '2025-02-05 02:32:54', '2025-02-05 02:32:54'),
(241, 49, 1, '0.25', 'jaraktempuh', '159.77247281328', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(242, 49, 2, '0.2', 'biaya', '30', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(243, 49, 3, '0.2', 'fasilitas', '10', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(244, 49, 4, '0.2', 'aksebilitas', '10', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(245, 49, 5, '0.15', 'peringkat', '25', '2025-02-05 02:34:24', '2025-02-05 02:34:24'),
(246, 50, 1, '0.25', 'jaraktempuh', '3.4670952068885', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(247, 50, 2, '0.2', 'biaya', '25', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(248, 50, 3, '0.2', 'fasilitas', '30', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(249, 50, 4, '0.2', 'aksebilitas', '30', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(250, 50, 5, '0.15', 'peringkat', '30', '2025-02-10 07:13:34', '2025-02-10 07:13:34'),
(251, 51, 1, '0.25', 'jaraktempuh', '41.665866405491', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(252, 51, 2, '0.2', 'biaya', '30', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(253, 51, 3, '0.2', 'fasilitas', '25', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(254, 51, 4, '0.2', 'aksebilitas', '30', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(255, 51, 5, '0.15', 'peringkat', '25', '2025-02-10 07:15:30', '2025-02-10 07:15:30'),
(256, 52, 1, '0.25', 'jaraktempuh', '41.876458527785', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(257, 52, 2, '0.2', 'biaya', '30', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(258, 52, 3, '0.2', 'fasilitas', '25', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(259, 52, 4, '0.2', 'aksebilitas', '30', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(260, 52, 5, '0.15', 'peringkat', '25', '2025-02-10 07:15:58', '2025-02-10 07:15:58'),
(261, 53, 1, '0.25', 'jaraktempuh', '5.5100897459862', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(262, 53, 2, '0.2', 'biaya', '30', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(263, 53, 3, '0.2', 'fasilitas', '30', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(264, 53, 4, '0.2', 'aksebilitas', '30', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(265, 53, 5, '0.15', 'peringkat', '25', '2025-02-10 07:16:35', '2025-02-10 07:16:35'),
(266, 54, 1, '0.25', 'jaraktempuh', '6.0529530646138', '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(267, 54, 2, '0.2', 'biaya', '30', '2025-02-10 07:17:15', '2025-02-10 07:17:15'),
(268, 54, 3, '0.2', 'fasilitas', '30', '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(269, 54, 4, '0.2', 'aksebilitas', '30', '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(270, 54, 5, '0.15', 'peringkat', '25', '2025-02-10 07:17:16', '2025-02-10 07:17:16'),
(271, 55, 1, '0.25', 'jaraktempuh', '41.383260316526', '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(272, 55, 2, '0.2', 'biaya', '30', '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(273, 55, 3, '0.2', 'fasilitas', '25', '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(274, 55, 4, '0.2', 'aksebilitas', '30', '2025-02-10 23:38:03', '2025-02-10 23:38:03'),
(275, 55, 5, '0.15', 'peringkat', '25', '2025-02-10 23:38:03', '2025-02-10 23:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_15_061304_create_alternatives_table', 1),
(6, '2024_10_15_062156_create_criterias_table', 1),
(7, '2024_10_18_190835_create_sub_criterias_table', 1),
(8, '2024_10_18_203411_create_travel_categories_table', 1),
(9, '2024_10_18_213026_create_performance_ratings_table', 1),
(10, '2024_10_21_150436_create_histories_table', 1),
(11, '2024_10_21_150708_create_history_weight_normalizations_table', 1),
(12, '2024_10_21_151054_create_history_alternatif_values_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `performance_ratings`
--

CREATE TABLE `performance_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternative_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `sub_criteria_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nilai` double(8,2) DEFAULT NULL,
  `normalisasi` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance_ratings`
--

INSERT INTO `performance_ratings` (`id`, `alternative_id`, `criteria_id`, `sub_criteria_id`, `nilai`, `normalisasi`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, 30.00, 0.5, '2024-12-04 03:15:07', '2024-12-04 03:16:31'),
(2, 1, 3, 10, 10.00, 0.33333333333333, '2024-12-04 03:15:07', '2024-12-04 03:16:31'),
(3, 1, 4, 15, 10.00, 0.33333333333333, '2024-12-04 03:15:07', '2025-02-04 21:58:56'),
(4, 1, 5, 20, 10.00, 0.33333333333333, '2024-12-04 03:15:07', '2024-12-04 04:48:57'),
(5, 2, 2, 8, 15.00, 1, '2024-12-04 03:16:31', '2024-12-04 03:16:31'),
(6, 2, 3, 14, 30.00, 1, '2024-12-04 03:16:31', '2024-12-04 03:16:31'),
(7, 2, 4, 17, 20.00, 0.66666666666667, '2024-12-04 03:16:31', '2025-02-04 21:58:56'),
(8, 2, 5, 21, 15.00, 0.5, '2024-12-04 03:16:31', '2024-12-04 04:48:57'),
(9, 4, 2, 5, 30.00, 0.5, '2024-12-04 03:31:12', '2024-12-04 03:31:12'),
(10, 4, 3, 10, 10.00, 0.33333333333333, '2024-12-04 03:31:12', '2024-12-04 03:31:12'),
(11, 4, 4, 15, 10.00, 0.33333333333333, '2024-12-04 03:31:12', '2025-02-04 21:58:56'),
(12, 4, 5, 23, 25.00, 0.83333333333333, '2024-12-04 03:31:12', '2024-12-04 04:48:57'),
(13, 5, 2, 5, 30.00, 0.5, '2024-12-04 03:32:17', '2024-12-04 03:32:17'),
(14, 5, 3, 10, 10.00, 0.33333333333333, '2024-12-04 03:32:17', '2024-12-04 03:32:17'),
(15, 5, 4, 15, 10.00, 0.33333333333333, '2024-12-04 03:32:17', '2025-02-04 21:58:56'),
(16, 5, 5, 23, 25.00, 0.83333333333333, '2024-12-04 03:32:17', '2024-12-04 04:48:57'),
(17, 3, 2, 5, 30.00, 0.5, '2024-12-04 04:48:57', '2024-12-04 04:48:57'),
(18, 3, 3, 10, 10.00, 0.33333333333333, '2024-12-04 04:48:57', '2024-12-04 04:48:57'),
(19, 3, 4, 15, 10.00, 0.33333333333333, '2024-12-04 04:48:57', '2025-02-04 21:58:56'),
(20, 3, 5, 24, 30.00, 1, '2024-12-04 04:48:57', '2024-12-04 04:48:57'),
(21, 6, 2, 5, 30.00, 0.5, '2025-01-29 23:14:49', '2025-01-29 23:14:49'),
(22, 6, 3, 10, 10.00, 0.33333333333333, '2025-01-29 23:14:49', '2025-01-29 23:14:49'),
(23, 6, 4, 15, 10.00, 0.33333333333333, '2025-01-29 23:14:49', '2025-02-04 21:58:56'),
(24, 6, 5, 20, 10.00, 0.33333333333333, '2025-01-29 23:14:49', '2025-01-29 23:14:49'),
(25, 10, 2, 6, 25.00, 0.6, '2025-01-29 23:16:10', '2025-01-29 23:16:10'),
(26, 10, 3, 11, 15.00, 0.5, '2025-01-29 23:16:10', '2025-01-29 23:16:10'),
(27, 10, 4, 17, 20.00, 0.66666666666667, '2025-01-29 23:16:10', '2025-02-04 21:58:56'),
(28, 10, 5, 22, 20.00, 0.66666666666667, '2025-01-29 23:16:10', '2025-01-29 23:16:10'),
(29, 9, 2, 5, 30.00, 0.5, '2025-02-04 21:57:10', '2025-02-04 21:57:10'),
(30, 9, 3, 12, 20.00, 0.66666666666667, '2025-02-04 21:57:10', '2025-02-04 21:57:10'),
(31, 9, 4, 15, 10.00, 0.33333333333333, '2025-02-04 21:57:10', '2025-02-04 21:58:56'),
(32, 9, 5, 23, 25.00, 0.83333333333333, '2025-02-04 21:57:10', '2025-02-04 21:57:11'),
(33, 11, 2, 5, 30.00, 0.5, '2025-02-04 21:57:50', '2025-02-04 21:57:50'),
(34, 11, 3, 10, 10.00, 0.33333333333333, '2025-02-04 21:57:50', '2025-02-04 21:57:50'),
(35, 11, 4, 15, 10.00, 0.33333333333333, '2025-02-04 21:57:50', '2025-02-04 21:58:56'),
(36, 11, 5, 22, 20.00, 0.66666666666667, '2025-02-04 21:57:50', '2025-02-04 21:57:50'),
(37, 12, 2, 5, 30.00, 0.5, '2025-02-04 21:58:14', '2025-02-04 21:58:14'),
(38, 12, 3, 10, 10.00, 0.33333333333333, '2025-02-04 21:58:14', '2025-02-04 21:58:14'),
(39, 12, 4, 15, 10.00, 0.33333333333333, '2025-02-04 21:58:14', '2025-02-04 21:58:56'),
(40, 12, 5, 23, 25.00, 0.83333333333333, '2025-02-04 21:58:14', '2025-02-04 21:58:14'),
(41, 13, 2, 5, 30.00, 0.5, '2025-02-04 21:58:56', '2025-02-04 21:58:56'),
(42, 13, 3, 14, 30.00, 1, '2025-02-04 21:58:56', '2025-02-04 21:58:56'),
(43, 13, 4, 19, 30.00, 1, '2025-02-04 21:58:56', '2025-02-04 21:58:56'),
(44, 13, 5, 23, 25.00, 0.83333333333333, '2025-02-04 21:58:56', '2025-02-04 21:58:56'),
(45, 16, 2, 5, 30.00, 0.5, '2025-02-04 21:59:44', '2025-02-04 21:59:44'),
(46, 16, 3, 12, 20.00, 0.66666666666667, '2025-02-04 21:59:44', '2025-02-04 21:59:44'),
(47, 16, 4, 19, 30.00, 1, '2025-02-04 21:59:44', '2025-02-04 21:59:44'),
(48, 16, 5, 23, 25.00, 0.83333333333333, '2025-02-04 21:59:44', '2025-02-04 21:59:44'),
(49, 17, 2, 5, 30.00, 0.5, '2025-02-04 22:00:43', '2025-02-04 22:00:43'),
(50, 17, 3, 14, 30.00, 1, '2025-02-04 22:00:43', '2025-02-04 22:00:43'),
(51, 17, 4, 19, 30.00, 1, '2025-02-04 22:00:43', '2025-02-04 22:00:43'),
(52, 17, 5, 23, 25.00, 0.83333333333333, '2025-02-04 22:00:43', '2025-02-04 22:00:43'),
(53, 19, 2, 5, 30.00, 0.5, '2025-02-04 22:01:16', '2025-02-04 22:01:16'),
(54, 19, 3, 12, 20.00, 0.66666666666667, '2025-02-04 22:01:16', '2025-02-04 22:01:16'),
(55, 19, 4, 19, 30.00, 1, '2025-02-04 22:01:16', '2025-02-04 22:01:16'),
(56, 19, 5, 23, 25.00, 0.83333333333333, '2025-02-04 22:01:16', '2025-02-04 22:01:16'),
(57, 18, 2, 5, 30.00, 0.5, '2025-02-04 22:02:05', '2025-02-04 22:02:05'),
(58, 18, 3, 11, 15.00, 0.5, '2025-02-04 22:02:05', '2025-02-04 22:02:05'),
(59, 18, 4, 19, 30.00, 1, '2025-02-04 22:02:05', '2025-02-04 22:02:05'),
(60, 18, 5, 23, 25.00, 0.83333333333333, '2025-02-04 22:02:05', '2025-02-04 22:02:05'),
(61, 21, 2, 5, 30.00, 0.5, '2025-02-10 07:11:38', '2025-02-10 07:11:38'),
(62, 21, 3, 13, 25.00, 0.83333333333333, '2025-02-10 07:11:38', '2025-02-10 07:11:38'),
(63, 21, 4, 19, 30.00, 1, '2025-02-10 07:11:38', '2025-02-10 07:11:38'),
(64, 21, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:11:38', '2025-02-10 07:11:38'),
(65, 23, 2, 5, 30.00, 0.5, '2025-02-10 07:11:54', '2025-02-10 07:11:54'),
(66, 23, 3, 14, 30.00, 1, '2025-02-10 07:11:54', '2025-02-10 07:11:54'),
(67, 23, 4, 19, 30.00, 1, '2025-02-10 07:11:54', '2025-02-10 07:11:54'),
(68, 23, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:11:54', '2025-02-10 07:11:54'),
(69, 22, 2, 5, 30.00, 0.5, '2025-02-10 07:12:13', '2025-02-10 07:12:13'),
(70, 22, 3, 10, 10.00, 0.33333333333333, '2025-02-10 07:12:13', '2025-02-10 07:12:13'),
(71, 22, 4, 15, 10.00, 0.33333333333333, '2025-02-10 07:12:13', '2025-02-10 07:12:13'),
(72, 22, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:12:13', '2025-02-10 07:12:13'),
(73, 25, 2, 5, 30.00, 0.5, '2025-02-10 07:12:28', '2025-02-10 07:12:29'),
(74, 25, 3, 13, 25.00, 0.83333333333333, '2025-02-10 07:12:29', '2025-02-10 07:12:29'),
(75, 25, 4, 19, 30.00, 1, '2025-02-10 07:12:29', '2025-02-10 07:12:29'),
(76, 25, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:12:29', '2025-02-10 07:12:29'),
(77, 26, 2, 5, 30.00, 0.5, '2025-02-10 07:12:43', '2025-02-10 07:12:43'),
(78, 26, 3, 10, 10.00, 0.33333333333333, '2025-02-10 07:12:43', '2025-02-10 07:12:43'),
(79, 26, 4, 19, 30.00, 1, '2025-02-10 07:12:43', '2025-02-10 07:12:43'),
(80, 26, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:12:43', '2025-02-10 07:12:43'),
(81, 24, 2, 5, 30.00, 0.5, '2025-02-10 07:13:00', '2025-02-10 07:13:00'),
(82, 24, 3, 14, 30.00, 1, '2025-02-10 07:13:00', '2025-02-10 07:13:00'),
(83, 24, 4, 19, 30.00, 1, '2025-02-10 07:13:00', '2025-02-10 07:13:00'),
(84, 24, 5, 23, 25.00, 0.83333333333333, '2025-02-10 07:13:00', '2025-02-10 07:13:00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_criterias`
--

CREATE TABLE `sub_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `bobot` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_criterias`
--

INSERT INTO `sub_criterias` (`id`, `criteria_id`, `name`, `bobot`, `created_at`, `updated_at`) VALUES
(5, 2, '< 25.000', 30.00, '2024-11-08 02:07:51', '2024-11-08 02:08:34'),
(6, 2, '26.000 - 50.000', 25.00, '2024-11-08 02:08:20', '2024-11-08 02:09:16'),
(7, 2, '51.000 - 100.000', 20.00, '2024-11-08 02:09:33', '2024-11-08 02:09:33'),
(8, 2, '101.000 - 500.000', 15.00, '2024-11-08 02:09:53', '2024-11-08 02:09:53'),
(9, 2, '501.000 - 1.000.000', 10.00, '2024-11-08 02:10:11', '2024-11-08 02:10:11'),
(10, 3, 'Area parkir dan Toilet Umum', 10.00, '2024-11-08 02:11:12', '2024-11-11 22:13:01'),
(11, 3, 'Area parkir luas, toilet, dan tempat makan', 15.00, '2024-11-08 02:11:37', '2024-11-11 22:13:46'),
(12, 3, 'Area parkir, toilet bersih, tempat makan, mushola, dan tempat duduk', 20.00, '2024-11-08 02:12:40', '2024-11-11 22:14:25'),
(13, 3, 'Area parkir luas, toilet bersih, mushola, tempat makan beragam, pusat informasi, dan area rekreasi', 25.00, '2024-11-08 02:13:44', '2024-11-11 22:15:05'),
(14, 3, 'Area parkir, toilet bersih, mushola, berbagai tempat makan, pusat informasi, akses disabilitas, dan ', 30.00, '2024-11-08 02:14:39', '2024-11-11 22:18:01'),
(15, 4, 'Hanya bisa diakses dengan berjalan kaki jarak jauh', 10.00, '2024-11-08 02:15:00', '2024-11-11 22:26:23'),
(16, 4, 'Bisa diakses dengan kendaraan biasa tetapi membutuhkan usaha ekstra', 15.00, '2024-11-08 02:15:12', '2024-11-11 22:20:19'),
(17, 4, 'Bisa diakses dengan mudah menggunakan kendaraan biasa, dan tersedia petunjuk arah', 20.00, '2024-11-08 02:15:29', '2024-11-11 22:21:32'),
(18, 4, 'Bisa diakses dengan kendaraan roda empat atau bus', 25.00, '2024-11-08 02:15:40', '2024-11-11 22:22:00'),
(19, 4, 'Tersedia aksebilitas untuk semua', 30.00, '2024-11-08 02:15:53', '2024-11-11 22:22:17'),
(20, 5, '1', 10.00, '2024-11-08 02:16:25', '2024-11-11 22:31:28'),
(21, 5, '2', 15.00, '2024-11-08 02:16:36', '2024-11-11 22:31:37'),
(22, 5, '3', 20.00, '2024-11-08 02:16:47', '2024-11-11 22:31:46'),
(23, 5, '4', 25.00, '2024-11-08 02:16:59', '2024-11-11 22:31:54'),
(24, 5, '5', 30.00, '2024-11-08 02:17:10', '2024-11-11 22:32:02'),
(26, 7, 'tes1', 91.00, '2024-11-24 06:52:12', '2024-11-24 06:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `travel_categories`
--

CREATE TABLE `travel_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_categories`
--

INSERT INTO `travel_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pegunungan', '2024-11-06 22:52:56', '2025-02-04 21:56:15'),
(2, 'Pantai', '2024-11-08 02:00:25', '2025-02-04 21:49:49'),
(3, 'Air Terjun', '2024-11-08 02:01:04', '2025-02-04 21:50:01'),
(4, 'Danau', '2024-11-08 02:02:20', '2025-02-04 21:50:11'),
(5, 'Gua', '2024-11-10 05:04:33', '2025-02-04 21:50:38'),
(6, 'Pulau', '2025-02-04 21:50:54', '2025-02-04 21:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('Pengguna','Administrator','Pengelola') NOT NULL DEFAULT 'Pengguna',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$ZtvUYau3oMjkh5pf/KjIKO/UBUfMBabknr8.Nd2DYECmrUzDSpN2y', 'Administrator', NULL, NULL, NULL),
(2, 'nanda', 'nandaa', 'annisananda585@gmail.com', NULL, '$2y$10$tllmgkl7.3SanhgDHJCriucIyMKozT1odnK0vwxgRc/DL4BuWVmha', 'Pengelola', NULL, '2024-12-04 03:04:09', '2024-12-04 03:04:09'),
(3, 'diva', 'diva', 'diva@gmail.com', NULL, '$2y$10$b6mu8v1ubfKtdongdKuTeu7INn84EURvbvLUH/Nv8pGXsHco.EOpO', 'Pengelola', NULL, '2025-01-13 05:39:38', '2025-02-05 02:36:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criterias`
--
ALTER TABLE `criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_alternatif_values`
--
ALTER TABLE `history_alternatif_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_weight_normalizations`
--
ALTER TABLE `history_weight_normalizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `performance_ratings`
--
ALTER TABLE `performance_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_categories`
--
ALTER TABLE `travel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `criterias`
--
ALTER TABLE `criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `history_alternatif_values`
--
ALTER TABLE `history_alternatif_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT for table `history_weight_normalizations`
--
ALTER TABLE `history_weight_normalizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `performance_ratings`
--
ALTER TABLE `performance_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_criterias`
--
ALTER TABLE `sub_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `travel_categories`
--
ALTER TABLE `travel_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
