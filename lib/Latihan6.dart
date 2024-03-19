
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Sample data (nama, hobi, dan URL foto)
  final List<Map<String, String>> data = [
    {
      "nama": "Rani", 
      "hobi": "Netflixan", 
      "foto":  "assets/netflix.png"
    },
    // Tambahkan data lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Pengguna'),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            // Mendapatkan data dari list
            String nama = data[index]['nama']!;
            String hobi = data[index]['hobi']!;
            String fotoPath = data[index]['foto']!;
            
            return Card(
              child: ListTile(
                leading: Image.asset(
                  fotoPath, // Menggunakan Image.asset untuk gambar dari file lokal
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Menampilkan placeholder jika gambar tidak dapat dimuat
                    return Icon(Icons.error_outline, color: Colors.red);
                  },
                ),
                title: Text(nama),
                subtitle: Text(hobi),
                trailing: Icon(Icons.more_vert, color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}