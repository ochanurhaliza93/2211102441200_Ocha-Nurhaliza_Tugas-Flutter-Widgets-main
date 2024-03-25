import 'package:flutter/material.dart'; // Mengimpor pustaka Flutter Material untuk membangun antarmuka pengguna.

void main() {
  runApp(VotingApp()); // Memulai aplikasi dengan menjalankan widget VotingApp.
}

class VotingApp extends StatelessWidget { // Widget utama aplikasi yang merupakan StatelessWidget.
  @override
  Widget build(BuildContext context) { // Membangun antarmuka pengguna aplikasi.
    return MaterialApp(
      title: 'Simple Voting App', // Judul aplikasi yang ditampilkan pada bar atas aplikasi.
      home: VotingScreen(), // Menetapkan VotingScreen sebagai layar utama aplikasi.
    );
  }
}

class VotingScreen extends StatefulWidget { // Widget yang memungkinkan perubahan status di layar.
  @override
  _VotingScreenState createState() => _VotingScreenState(); // Membuat dan mengembalikan state VotingScreen.
}

class _VotingScreenState extends State<VotingScreen> { // State VotingScreen yang dapat berubah.
  int _yesCount = 0; // Variabel untuk menghitung jumlah suara setuju.
  int _noCount = 0; // Variabel untuk menghitung jumlah suara tidak setuju.

  @override
  Widget build(BuildContext context) { // Membangun antarmuka pengguna VotingScreen.
    return Scaffold( // Menggunakan Scaffold sebagai kerangka dasar untuk menyusun elemen-elemen antarmuka pengguna.
      appBar: AppBar(
        title: Text('Voting App'), // Judul yang ditampilkan pada AppBar.
      ),
      body: Center( // Menempatkan konten di tengah layar.
        child: Column( // Menyusun widget dalam satu kolom.
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun widget secara vertikal di tengah layar.
          children: <Widget>[
            Image.network( // Menampilkan gambar dari URL.
              'https://www.techaheadcorp.com/wp-content/uploads/2023/11/The-History-Of-Flutter-A-Comprehensive-Overview-Of-The-Development-Framework.webp', // URL gambar.
              width: 150, // Lebar gambar.
              height: 150, // Tinggi gambar.
            ),
            SizedBox(height: 20.0), // Mengatur jarak antara gambar dan teks.
            Text(
              'Apakah Anda setuju kalau bumi itu datar?', // Pernyataan yang akan divoting.
              style: TextStyle(fontSize: 20.0), // Gaya teks dengan ukuran 20.
              textAlign: TextAlign.center, // Teks ditengahkan.
            ),
            SizedBox(height: 20.0), // Mengatur jarak antara teks dan tombol.
            Row( // Menyusun tombol dalam satu baris.
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyusun tombol dengan jarak yang sama.
              children: <Widget>[
                ElevatedButton( // Tombol untuk suara setuju.
                  onPressed: () {
                    setState(() {
                      _yesCount++; // Menambah jumlah suara setuju saat tombol ditekan.
                    });
                  },
                  child: Icon(Icons.thumb_up), // Menampilkan ikon jempol ke atas.
                ),
                ElevatedButton( // Tombol untuk suara tidak setuju.
                  onPressed: () {
                    setState(() {
                      _noCount++; // Menambah jumlah suara tidak setuju saat tombol ditekan.
                    });
                  },
                  child: Icon(Icons.thumb_down), // Menampilkan ikon jempol ke bawah.
                ),
              ],
            ),
            SizedBox(height: 20.0), // Mengatur jarak antara tombol dan teks hasil voting.
            Row( // Menyusun teks hasil voting dalam satu baris.
              mainAxisAlignment: MainAxisAlignment.center, // Menyusun teks secara horisontal di tengah.
              children: <Widget>[
                Text('Setuju: $_yesCount', style: TextStyle(fontSize: 18.0)), // Menampilkan jumlah suara setuju.
                SizedBox(width: 20.0), // Mengatur jarak antara teks suara setuju dan tidak setuju.
                Text('Tidak Setuju: $_noCount', style: TextStyle(fontSize: 18.0)), // Menampilkan jumlah suara tidak setuju.
              ],
            ),
          ],
        ),
      ),
    );
  }
}
