# Deskripsi Sistem

## deskripsi aplikasi
CalmiBand adalah sebuah aplikasi healthtech yang dirancang untuk membantu orang tua, guru, dan pendamping dalam memantau kondisi fisiologis serta emosional anak dengan spektrum autisme secara real-time. Melalui integrasi antara gelang pintar dan aplikasi mobile, CalmiBand mampu menampilkan data seperti detak jantung, tingkat stres, suhu tubuh, dan perubahan emosi secara otomatis. Aplikasi ini menyediakan antarmuka yang sederhana dan informatif, sehingga pengguna dapat dengan mudah memahami kondisi anak, menerima notifikasi ketika terjadi perubahan signifikan, serta mengakses riwayat pemantauan untuk melihat perkembangan emosi dan kesehatan anak dari waktu ke waktu.
Selain fitur pemantauan, CalmiBand juga dilengkapi dengan sistem statistik, multi-akun anak, dan manajemen profil yang memudahkan pengaturan informasi secara individual. Teknologi yang digunakan meliputi Flutter sebagai frontend untuk tampilan aplikasi, Laravel sebagai backend untuk mengelola data dan autentikasi, serta MySQL sebagai basis data utama. Dengan kemampuan analisis otomatis dan pembaruan data real-time, CalmiBand diharapkan dapat menjadi solusi efektif dalam memberikan intervensi cepat, meningkatkan responsivitas pendamping, serta mendukung perkembangan anak autistik melalui pemantauan yang akurat dan berkelanjutan.


## Registrasi & Login


Fitur registrasi dan login pada aplikasi CalmiBand dirancang untuk memastikan setiap pengguna memiliki akses yang bersifat personal. Melalui proses registrasi, pengguna dapat memasukkan data yang diperlukan untuk membuat akun baru yang berfungsi sebagai identitas digital di dalam aplikasi CalmiBand. Setelah akun berhasil dibuat, pengguna dapat mengakses aplikasi melalui fitur login menggunakan data yang telah terdaftar. Kehadiran fitur ini membantu menjaga keamanan dan keutuhan data pengguna, memudahkan penyimpanan riwayat, serta memastikan pengalaman penggunaan aplikasi tetap aman, teratur, dan terkontrol.


## Beranda aplikasi


Beranda aplikasi merupakan halaman utama pada CalmiBand yang menampilkan rangkuman kondisi kesehatan dan emosional anak secara real-time. Pada halaman ini, pengguna dapat melihat informasi seperti detak jantung, tingkat stres, suhu tubuh, serta riwayat perubahan emosi dalam kurun waktu tertentu. Tampilan dashboard dirancang agar mudah dipahami, sehingga orang tua maupun guru dapat memantau kondisi anak dengan cepat dan akurat. Selain itu, beranda aplikasi juga menyediakan ringkasan aktivitas dan status terbaru sebagai acuan untuk pengambilan tindakan atau intervensi yang diperlukan.


## Statistik

Fitur Statistika pada aplikasi CalmiBand berfungsi menampilkan rangkuman  data visual sehingga user CalmiBand  mudah memahami data yang telah disajikan. Melalui grafik dan indikator numerik, pengguna CalmiBand dapat melihat pola serta perubahan kondisi emosional dari waktu ke waktu yang terjadi pada anak autisme. Data yang ditampilkan pada aplikasi diperbarui secara otomatis berdasarkan kondisi anak tersebut, sehingga informasi yang diterima selalu relevan dan terbaru. Dengan adanya fitur statistik ini, pengguna dapat mengetahui perubahan emosional lebih cepat dan tepat karena memiliki gambaran kondisi yang jelas dan terukur.



## Anak 

CalmiBand mendukung sistem multi account yang memungkinkan satu akun utama orang tua atau pendamping untuk mengelola beberapa profil anak sekaligus. Dalam satu akun, user dapat membuat dan menyimpan beberapa profil anak dengan data yang berbeda, seperti nama, usia, serta kondisi kesehatan mental masing-masing. Setiap profil memiliki pemantauan tersendiri, seperti tingkat stres harian, riwayat emosi, hingga notifikasi gangguan yang muncul. Data dari tiap profil dipisahkan dengan jelas, sehingga orang tua dapat melihat laporan, statistik, dan pola perkembangan setiap anak secara individual. Dengan fitur ini, CalmiBand memberikan kemudahan bagi keluarga yang memiliki lebih dari satu anak untuk memantau kondisi masing-masing secara efisien dalam satu aplikasi tanpa harus membuat akun baru.



## Riwayat

Salah satu fitur utamanya ialah menampilkan riwayat kondisi anak, sehingga orang tua dapat memantau perkembangan dan pola emosional anak dari waktu ke waktu. Aplikasi ini menyimpan catatan tingkat stres maupun emosi anak setiap hari, serta memberikan notifikasi ketika terdapat perubahan signifikan pada kondisi mental anak. Data riwayat ini diolah menjadi grafik atau laporan statistik, sehingga orang tua dapat melihat jangka panjang. Berdasarkan riwayat kondisi, aplikasi CalmiBand juga dapat memberikan rekomendasi penenangan atau otomatis mengaktifkan fitur penenangan pada gelang. Selain itu, riwayat dapat diekspor atau dicetak untuk dibagikan dengan psikolog atau guru. Dengan fitur riwayat ini, CalmiBand membantu orang tua ataupun pendamping memantau kesehatan mental anak secara menyeluruh, memberikan dasar data, dan mendukung pengambilan keputusan yang lebih tepat dalam mendampingi anak.



## Profile Akun

CalmiBand menyediakan fitur profile yang memuat informasi dasar anak dan pengaturan akun orang tua. Di dalam profil, orang tua dapat mengisi data seperti nama, usia, jenis kelamin, serta informasi kontak darurat, sehingga aplikasi dapat menyesuaikan pemantauan kondisi mental anak dengan lebih akurat. Profil juga menampilkan ringkasan aktivitas anak, termasuk stres rata-rata, dan statistik penggunaan gelang. Pengguna dapat mengetahui pembaruan informasi pribadi kapan saja, mengelola pengaturan notifikasi, dan menyesuaikan preferensi aplikasi agar sesuai dengan kebutuhan anak. Dengan fitur profile ini, CalmiBand memastikan pengalaman penggunaan yang personal, aman, dan mudah diakses oleh orang tua maupun pendamping, sekaligus menyediakan data penting untuk mendukung pemantauan kesehatan mental anak secara efektif.


 
## Teknologi yang Digunakan

### Front-end: Flutter (Dart) 
  
Flutter dengan bahasa pemrograman Dart digunakan untuk membangun antarmuka pengguna yang modern, responsif, dan konsisten. Teknologi ini memungkinkan aplikasi berjalan secara cross-platform pada perangkat Android dan iOS tanpa perlu membuat kode terpisah, sehingga proses pengembangan menjadi lebih cepat dan efisien.

### Back-end: Laravel 
  
Laravel digunakan sebagai teknologi backend yang menangani seluruh proses logika bisnis, pengelolaan data, autentikasi pengguna, serta komunikasi antara aplikasi dan server. Framework ini dipilih karena memiliki struktur yang rapi, keamanan yang baik, dan dukungan fitur bawaan yang sangat membantu dalam membangun sistem yang stabil dan mudah dikembangkan.

### Database: MySQL

MySQL berperan sebagai sistem manajemen basis data yang menyimpan seluruh informasi yang digunakan aplikasi, mulai dari data pengguna hingga transaksi atau proses operasional lainnya. MySQL dipilih karena memiliki performa yang cepat, struktur data yang terorganisir, serta kemampuan untuk menangani data dalam jumlah besar dengan tetap menjaga stabilitas dan keamanan.

# Requirements

Android Studio 2025.2.1
[Android Studio 2025.2.1](https://developer.android.com/studio?hl=id)

Flutter 3.35.7
[Flutter SDK](https://docs.flutter.dev/get-started/quick)

# cara instalasi

cloning project

```
git clone https://github.com/AghaGit-51/Calmi.git
```

install dependencies

```
flutter pub get
```

run application

```
flutter run
```



