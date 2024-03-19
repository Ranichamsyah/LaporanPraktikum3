import 'package:flutter/material.dart';

void main() {
  runApp(GojekApp());
}

class GojekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek App',
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
        backgroundColor: Colors.green, // Warna latar belakang app bar
        title: Text(
          'Gojek',
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
                      color: Colors.white, // Warna background putih
                      borderRadius: BorderRadius.circular(20.0), // Bentuk bulat
                      border: Border.all(color: Color.fromARGB(255, 28, 198, 6)), // Warna pinggiran
                    ),
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Color.fromARGB(255, 28, 198, 6)),
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
                  MenuItem(imagePath: 'assets/goride.JPG', label: 'GoRide'),
                  MenuItem(imagePath: 'assets/gocar.JPG', label: 'GoCar'),
                  MenuItem(imagePath: 'assets/gofood.JPG', label: 'GoFood'),
                  MenuItem(imagePath: 'assets/gosend.JPG', label: 'GoSend'),
                  MenuItem(imagePath: 'assets/gomart.JPG', label: 'GoMart'),
                  MenuItem(imagePath: 'assets/gopulsa.JPG', label: 'GoPulsa'),
                  MenuItem(imagePath: 'assets/gocheckin.JPG', label: 'GoCheckIn'),
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
