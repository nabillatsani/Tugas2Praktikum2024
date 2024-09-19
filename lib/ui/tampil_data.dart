import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      backgroundColor: Colors.lightBlue[50], // Warna background yang lembut
      appBar: AppBar(
        title: const Text("Kembali"),
        backgroundColor: Colors.transparent, // Warna modern untuk AppBar
        elevation: 0, // Menghilangkan bayangan di bawah AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Padding yang lebih luas
          child: Card(
            elevation: 5, // Menambahkan bayangan ke card
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15), // Membuat sudut yang melengkung
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Perkenalkan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue, // Warna utama
                    ),
                  ),
                  const SizedBox(height: 10), // Spasi antar elemen
                  Text(
                    "Nama saya $nama",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500, // Font lebih tegas
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    "NIM: $nim",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(height: 10), // Spasi antar elemen
                  Text(
                    "Saya berumur $umur tahun",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600], // Warna lebih lembut untuk detail
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
