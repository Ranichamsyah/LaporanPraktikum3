import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 62, 152, 255), // Warna biru muda
          title: Ink(
            child: InkWell(
              onTap: () {
                // Tambahkan aksi ketika AppBar diklik di sini
              },
              hoverColor: Colors.black12, // Warna bayangan saat dihover
              child: Text(
                'Penuhi Lindungi',
                style: TextStyle(
                  color: Colors.white, // Warna putih
                ),
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.0), // Atur tinggi garis bawah
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Warna bayangan
                    spreadRadius: 1, // Menyebar bayangan
                    blurRadius: 2, // Tingkat kabur bayangan
                    offset: Offset(0, 1), // Geser bayangan (x, y)
                  ),
                ],
              ),
              height: 2.0, // Ketebalan garis bawah
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromARGB(255, 62, 152, 255), // Warna biru muda
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entering a public space?',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Warna putih
                          ),
                        ),
                        SizedBox(height: 5.0), // Spasi antara teks
                        Text(
                          'Stay allert to stay safe',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white, // Warna putih
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[200],
                    ),
                    child: Image.asset(
                      'assets/peduli.png', // Ganti dengan path gambar profil Anda
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200], // Warna latar belakang untuk menu
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    _buildFeatureItem('assets/vaccine.JPG', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/test_result.JPG', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/ehac.JPG', 'EHAC'),
                    _buildFeatureItem('assets/vaccine.JPG', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/test_result.JPG', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/ehac.JPG', 'EHAC'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String imagePath, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 60.0,
          height: 60.0,
        ),
        SizedBox(height: 10.0),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
