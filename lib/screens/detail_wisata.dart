import 'package:flutter/material.dart';

class DetailWisataScreen extends StatelessWidget {
  final String nama;
  final String gambar;
  final String deskripsi;

  const DetailWisataScreen({
    super.key,
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              gambar,
              fit: BoxFit.cover,
              height: 250,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                deskripsi,
                style: const TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
