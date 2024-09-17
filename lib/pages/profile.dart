import 'package:flutter/material.dart';
import 'package:matkul/pages/AccountOne.dart';
import 'package:matkul/pages/AccountTwo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Details"),
      ),
      body: ListView(
        children: [
          ListTile( // container akun
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/images/kevin.jpeg'),
              backgroundColor: Colors.transparent,
              ),
            title: const Text("Kevin Rafif"),
            subtitle: const Text("2209106131"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountOnePage()),
              );
            },
          ),
          const Divider(),
          ListTile( // container akun
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('lib/assets/images/steven.jpeg'),
              backgroundColor: Colors.transparent,
              ),
            title: const Text("Steven Geraldo Sengiang"),
            subtitle: const Text("2209106134"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountTwoPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}