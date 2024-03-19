import 'package:flutter/material.dart';

void main() {
  runApp(TwitterDesign());
}

class TwitterDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tuiter',
            style: TextStyle(
              color: Colors.white, // Mengatur warna teks menjadi putih
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),

        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: BoxConstraints.expand(height: 200), // Atur tinggi kontainer sampul
                  color: Colors.grey[300],
                  child: Image.asset(
                    'assets/sampul.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 16, right: 16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rani Chamsyah',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 199.9, // Atur posisi tombol ke pojok kanan atas
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi untuk tombol follow di sini
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder( // Membuat tombol menjadi berbentuk kotak
                    borderRadius: BorderRadius.circular(8), // Mengatur border radius
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1), // Atur padding vertikal dan horizontal
                  backgroundColor: Colors.lightBlue, // Warna latar belakang tombol
                  foregroundColor: Colors.white, // Warna teks tombol
                  // Atur margin atas tombol
                  elevation: 2,
                  shadowColor: Colors.grey,
                ),
                child: Text('Follow'),
              ),
            ),
            Positioned(
              left: 20,
              top: 140,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.lightBlue, width: 3),
                ),
                child: Image.asset(
                  'assets/profil.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
