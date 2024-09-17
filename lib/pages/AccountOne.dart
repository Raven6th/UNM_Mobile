import 'package:flutter/material.dart';

class AccountOnePage extends StatelessWidget { // bio akun 1
  const AccountOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar( // gambar
              radius: 50,
              backgroundImage: AssetImage('lib/assets/images/kevin.jpeg'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 16),
            const Text( // nama
              "Kevin Rafif",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text( // email
              "kevinrafif33@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Row( // no telp
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone),
                SizedBox(width: 8),
                Text("123-456-7890"),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton( // tombol edit (gak ada fungsi)
              onPressed: () {},
              child: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
