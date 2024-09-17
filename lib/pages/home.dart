import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Items for Sale"),
      ),
      body: ListView(
        children: [
          _buildItem('Laptop', 'lib/assets/images/laptop.jpg', 1500.0),
          _buildItem('Phone', 'lib/assets/images/phone.jpg', 999.0),
          _buildItem('Headphones', 'lib/assets/images/headphone.jpg', 200.0),
        ],
      ),
    );
  }

  Widget _buildItem(String name, String imagePath, double price) { // layout widget list barang
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox( // gambar
              width: 100,
              height: 100,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton( //button beli
              onPressed: () {},
              child: const Text("Buy"),
            ),
          ],
        ),
      ),
    );
  }
}
