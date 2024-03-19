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
                'Peduli Lindungi',
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
                      // Tambahkan dekorasi untuk logo check-in
                      image: DecorationImage(
                        image: AssetImage('assets/check_in_logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // Atur margin untuk container putih
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang container putih
                borderRadius: BorderRadius.circular(20.0), // Radius sudut container putih
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Warna bayangan
                    spreadRadius: 1, // Menyebar bayangan
                    blurRadius: 2, // Tingkat kabur bayangan
                    offset: Offset(0, 1), // Geser bayangan (x, y)
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Agar teks dan ikon berada di ujung kanan dan kiri
                    children: [
                      Text(
                        'Check-in Preference',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Tambahkan aksi saat tombol "scan" ditekan
                        },
                        icon: Icon(Icons.qr_code_scanner), // Ikon "scan"
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), // Spasi antara teks dan ikon
                  Row(
                    children: [
                      Icon(Icons.check), // Ganti dengan icon atau gambar logo check-in yang sesuai
                      SizedBox(width: 10.0), // Spasi antara icon dan teks
                      Text(
                        'Your current check-in preference', // Teks untuk check-in preference
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255), // Warna latar belakang untuk menu
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    _buildFeatureItem('assets/vaccinePL.JPG', 'Covid-19 Vaksin'),
                    _buildFeatureItem('assets/test_resultPL.JPG', 'Covid-19 Test Result'),
                    _buildFeatureItem('assets/ehacPL.JPG', 'EHAC'),
                    _buildFeatureItem('assets/travelPL.JPG', 'Travel Regulation'),
                    _buildFeatureItem('assets/telemedicine.JPG', 'telemedicine'),
                    _buildFeatureItem('assets/health.JPG', 'Health care facility'),
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
