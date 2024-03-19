import 'package:flutter/material.dart';
void main() {
  runApp(GojekApp());
}

class GojekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Goyek App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 43, 78, 255), // Warna latar belakang app bar
        title: Text(
          'Goyek',
          style: TextStyle(
            color: Colors.white, // Warna teks putih
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // Your Favourites Container
          Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Favourites',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              InkWell(
                onTap: () {
                  // Handle edit button tap
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.blue, // Mengubah warna latar belakang menjadi biru
                    borderRadius: BorderRadius.circular(8.0), // Mengubah bentuk menjadi kotak dengan sudut bulat
                  ),
                  child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white), // Mengubah warna teks menjadi putih
                  ),
                ),
              ),

              ],
            ),
          ),
          // Menu
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0), // Menambahkan padding antara setiap MenuItem
              child: GridView.count(
                crossAxisCount: 4,
                children: <Widget>[
                  MenuItem(imagePath: 'assets/sepeda.png', label: 'GoRide'),
                  MenuItem(imagePath: 'assets/gocar.JPG', label: 'GoCar'),
                  MenuItem(imagePath: 'assets/gofood.JPG', label: 'GoFood'),
                  MenuItem(imagePath: 'assets/kirim.JPG', label: 'GoSend'),
                  MenuItem(imagePath: 'assets/gomart.JPG', label: 'GoMart'),
                  MenuItem(imagePath: 'assets/pulsa.JPG', label: 'GoPulsa'),
                  MenuItem(imagePath: 'assets/check.JPG', label: 'GoCheckIn'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const MenuItem({Key? key, required this.imagePath, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle menu item tap
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 50.0,
            height: 50.0,
          ),
          SizedBox(height: 8.0), // Menambahkan jarak di antara gambar dan teks
          Text(label),
        ],
      ),
    );
  }
}