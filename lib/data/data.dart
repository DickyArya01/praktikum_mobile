import 'package:praktikum_mobile/main.dart';

class Wisata {
  String namaWisata;
  String imgAssets;
  String videoAssets;
  String lokasi;
  String desc;

  Wisata({
    required this.namaWisata, 
    required this.imgAssets,
    required this.videoAssets,
    required this.lokasi,
    required this.desc,
    });
}

List<Wisata> listWisata = [
  Wisata(
      namaWisata: 'Bromo',
      imgAssets:
          'https://akcdn.detik.net.id/community/media/visual/2019/03/08/96d60356-f54f-4b9d-a5af-4cbc8c24f3c7_169.jpeg?w=780&q=90',
      videoAssets:
          'https://media.istockphoto.com/id/1334389766/id/video/lebah-di-sarang-lebah-dengan-madu-lebah-mengisi-sarang-lebah-dengan-madu-segar-madu-ramah.mp4?s=mp4-640x640-is&k=20&c=v274wfisuUsBkF0nEmENH1QXFoL5wCFH9JFSYR7wZ08=',
      lokasi: 'Kabupaten Malang Jawa Timur',        
      desc: 'Gunung berapi ini adalah salah satu gunung yang terpopuler di Jawa Timur selain kawah gunung ijen. Bahkan Bromo adalah wisata alam pegunungan yang paling banyak di kunjungi wisatawan lokal dan asing sebagai tujuan liburan pribadi dan keluarga di Malang. Hal ini bisa di ketahui oleh program pemerintah yang gencar mempromosikan lokasi gunung bromo sebagai destinasi terbaik hingga hingga ke manca negara. Tidak mengherankan mengapa gunung bromo begitu difavoritkan oleh semua kalangan karena pesona dan tekstur dari gunung bromo adalah salah satu wisata alam gunung yang sangat langka dan memang tidak ada yang menyerupai dengan gunung gunung manapun di dunia ini.'        
  ),
  Wisata(
      namaWisata: 'Wakatobi',
      imgAssets:
          'https://anekatempatwisata.com/wp-content/uploads/2020/01/Pantai-kepulauan-wakatobi-1-1024x685.jpg',
      videoAssets:
          'https://media.istockphoto.com/id/1092177168/id/video/pria-bahagia-mendengarkan-musik-dari-ponsel-di-jalan.mp4?s=mp4-640x640-is&k=20&c=yGE0iDT1oF4PtHHVfODKCaPmgLKCGPSgjFK00kPJ4pU=',
      lokasi: 'Kabupaten Wakatobi, Sulawesi Tenggara',        
      desc: 'Taman Nasional Wakatobi adalah salah satu taman nasional di Indonesia. Letaknya di Kabupaten Wakatobi, Sulawesi Tenggara. Taman nasional ini ditetapkan pada tanggal 19 Agustus tahun 2002 berdasarkan Surat Keputusan Menteri kehutanan Nomor 7661/Kpts-II/2002. Lahan yang dipakai seluas 1,39 juta hektare. Sebelumnya, taman nasional ini juga telah ditetapkan oleh Surat Keputusan Menteri Kehutanan Nomor 393/Kpts-V/1996. Taman Nasional Wakatobi terdiri dari 25 gugusan terumbu karang sepanjang 600 km. Wakatobi merupakan akronim dari nama empat pulau besar, yaitu Pulau Wangi-wangi, Pulau Kaledupa, Pulau Tomia dan Pulau Binongko. Perairan lautnya beragam mulai dari yang datar, melandai ke arah laut, dan bertubir curam. Kedalaman airnya bervariasi dengan bagian terdalam 1.044 meter. Permukaan laut ini berpasir dan berkarang. Di taman nasional ini ada 112 jenis karang dari 13 famili. Selain itu terdapat 93 jenis ikan hias dan beberapa jenis penyu. Ada pula beberapa jenis burung laut seperti angsa-batu coklat, cerek melayu dan raja udang erasia. Taman Nasional Wakatobi berbatasan dengan Laut Banda di utara dan timur. Di bagian selatan berbatasan dengan Laut Flores, sedangkan bagian baratnya berbatasan dengan Pulau Buton.'
  ),
  Wisata(
      namaWisata: 'Pulau Komodo',
      imgAssets:
          'https://anekatempatwisata.com/wp-content/uploads/2014/10/Pantai-Pink-Pulau-Komodo.jpg',
      videoAssets:
          'https://media.istockphoto.com/id/1313663959/id/video/wanita-cantik-menghabiskan-hari-musim-semi-di-luar-ruangan-tersenyum-dan-menikmati.mp4?s=mp4-640x640-is&k=20&c=lKnbi4uUZtmecvWrydscFo1EoD9rI3NsmlT0LKl5lIA=',
      lokasi: 'Kepulauan Nusa Tenggara, NTT',        
      desc: 'Pulau Komodo adalah sebuah pulau yang terletak di Kepulauan Nusa Tenggara, berada di sebelah timur Pulau Sumbawa, yang dipisahkan oleh Selat Sape. Pulau Komodo dikenal sebagai habitat asli hewan komodo.\nPulau ini termasuk salah satu kawasan Taman Nasional Komodo yang dikelola oleh Pemerintah Pusat.\nSecara administratif, pulau ini termasuk wilayah Kabupaten Manggarai Barat, Kecamatan Komodo, Provinsi Nusa Tenggara Timur, Indonesia. Pulau Komodo merupakan ujung paling barat Provinsi Nusa Tenggara Timur, berbatasan dengan Provinsi Nusa Tenggara Barat.\nDi Pulau Komodo, hewan komodo hidup dan berkembang biak dengan baik. Hingga Agustus 2009, di pulau ini terdapat sekitar 1300 ekor komodo. Ditambah dengan pulau lain, seperti Pulau Rinca dan dan Gili Motang, jumlah mereka keseluruhan mencapai sekitar 2500 ekor. Ada pula sekitar 100 ekor komodo di Cagar Alam Wae Wuul di daratan Pulau Flores tapi tidak termasuk wilayah Taman Nasional Komodo.\nSelain komodo, pulau ini juga menyimpan eksotisme flora yang beragam kayu sepang yang oleh warga sekitar digunakan sebagi obat dan bahan pewarna pakaian, pohon nitak ini atau sterculia oblongata di yakini berguna sebagai obat dan bijinya gurih dan enak seperti kacang polong. '
  ),
  Wisata(
      namaWisata: 'Raja Ampat',
      imgAssets:
          'https://anekatempatwisata.com/wp-content/uploads/2014/10/Raja-Ampat.jpg',
      videoAssets:
          'https://media.istockphoto.com/id/1349780493/id/video/konsep-sci-fi-digital-di-dalam-prosesor-kecerdasan-buatan-dengan-data-biner.mp4?s=mp4-640x640-is&k=20&c=_1dCvy6mEm0ZSORjl56omqS15CxD2FqOQrMU1n7YJ2Q=',
      lokasi: 'Waisai, Papua Barat',        
      desc: 'Kabupaten Raja Ampat adalah salah satu kabupaten di provinsi Papua Barat, Indonesia. Ibukota kabupaten ini terletak di Waisai. Kabupaten ini memiliki 610 pulau, termasuk kepulauan Raja Ampat. Empat di antaranya, yakni Pulau Misool, Salawati, Batanta dan Waigeo, merupakan pulau-pulau besar. Dari seluruh pulau hanya 35 pulau yang berpenghuni sedangkan pulau lainnya tidak berpenghuni dan sebagian besar belum memiliki nama. Kabupaten ini memiliki total luas 67.379,60 km² dengan rincian luas daratan 7.559,60 km² dan luas lautan 59.820,00 km².'
      ),
  Wisata(
      namaWisata: 'Danau Sentani',
      imgAssets:
          'https://anekatempatwisata.com/wp-content/uploads/2014/10/Danau-Sentani.jpg',
      videoAssets:
          'https://media.istockphoto.com/id/884015072/id/video/digitalisasi-aliran-informasi-bergerak-melalui-server-rak-di-pusat-data.mp4?s=mp4-640x640-is&k=20&c=8oFNkUhZIw0xQC0-eM7GMERMDWPeVDifaw1sF9UCb38=',
      lokasi: 'Jayapura, Papua',        
      desc: 'Danau Sentani adalah danau yang terletak di Papua Indonesia. Danau Sentani berada di bawah lereng Pegunungan Cagar Alam Cyclops yang memiliki luas sekitar 245.000 hektar. Danau ini terbentang antara Kota Jayapura dan Kabupaten Jayapura, Papua. Danau Sentani yang memiliki luas sekitar 9.360 hektar dan berada pada ketinggian 75 mdpl. Danau Sentani merupakan danau terluas di Papua.\nDi danau ini juga terdapat 21 buah pulau kecil menghiasi danau yang indah ini. Arti kata Sentani berarti "di sini kami tinggal dengan damai”. Nama Sentani sendiri pertama kali disebut oleh seorang Pendeta Kristen BL Bin ketika melaksanakan misionaris di wilayah danau ini pada tahun 1898. '
      ),
];
