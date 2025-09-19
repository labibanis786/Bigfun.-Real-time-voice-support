import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(padding: const EdgeInsets.all(12), child: Column(children: const [
        CircleAvatar(radius: 48, backgroundImage: AssetImage('assets/avatar.png')),
        SizedBox(height: 12),
        Text('User Name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Text('Level: 1'),
        SizedBox(height: 8),
        Text('ID: user_12345'),
      ])),
    );
  }
}
