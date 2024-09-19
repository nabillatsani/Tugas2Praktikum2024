import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Align(
            alignment: Alignment.topCenter, // Mengatur posisi kotak ke atas
            child: Column(
              mainAxisSize: MainAxisSize.min, // Memastikan kolom hanya sebesar isi
              children: [
                const SizedBox(height: 40), // Jarak dari atas halaman
                _buildInputBox(),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildInputBox() {
    return Container(
      padding: const EdgeInsets.all(20), // Padding dalam kotak
      width: 350, // Menentukan lebar kotak
      decoration: BoxDecoration(
        color: Colors.white, // Latar belakang kotak putih
        borderRadius: BorderRadius.circular(20), // Sudut kotak lebih tumpul
        border: Border.all(color: Colors.grey[500]!, width: 2), // Border lebih tebal
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Memastikan elemen mengisi lebar kotak
        children: [
          const Text(
            "Input Data",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
            textAlign: TextAlign.center, // Pusatkan teks di dalam kotak
          ),
          const SizedBox(height: 15), // Jarak antara teks dan input
          _textboxNama(),
          const SizedBox(height: 15),
          _textboxNIM(),
          const SizedBox(height: 15),
          _textboxTahun(),
          const SizedBox(height: 20), // Jarak antara input dan tombol
          _buildSaveButton(),
        ],
      ),
    );
  }

  Widget _textboxNama() {
    return _buildMinimalTextField(
      label: "Nama",
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return _buildMinimalTextField(
      label: "NIM",
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return _buildMinimalTextField(
      label: "Tahun Lahir",
      controller: _tahunController,
      isNumber: true,
    );
  }

  Widget _buildMinimalTextField({
    required String label,
    required TextEditingController controller,
    bool isNumber = false,
  }) {
    return TextField(
      controller: controller,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.black54, // Warna label yang soft
          fontSize: 16, // Ukuran font yang lebih menonjol pada label
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0), // Sudut tumpul pada input
        ),
        filled: true,
        fillColor: Colors.white, // Warna latar belakang input yang kontras
        contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Padding dalam input
      ),
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildSaveButton() {
    return SizedBox(
      width: double.infinity, // Tombol memenuhi lebar kotak
      child: TextButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.lightBlue[300], // Warna biru muda flat
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Desain tombol minimalis dengan sudut tumpul
          ),
        ),
        child: const Text(
          'Simpan',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w400, // Font yang lebih ringan
          ),
        ),
      ),
    );
  }
}
