import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tabs Example'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'For You'),
                Tab(text: 'Following'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ForYouTab(),
              FollowingTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForYouTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) => Divider(), // Tambahkan garis pemisah
      itemBuilder: (context, index) {
        return ListTile(
          leading: FlutterLogo(), // Icon default Flutter
          title: Text('Data ke $index'),
        
        );
      },
    );
  }
}

class FollowingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        // Menggunakan Row untuk menampilkan dua gambar per baris
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://source.unsplash.com/random/400x200', // Ganti dengan URL gambar Anda
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://source.unsplash.com/random/400x200', // Ganti dengan URL gambar Anda
                  height: 100,
                  width: 100,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
