import 'package:flutter/material.dart';

class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gifts')),
      body: GridView.count(crossAxisCount: 3, padding: const EdgeInsets.all(12), children: List.generate(9, (i) => Card(child: Center(child: Text('Gift \${i+1}'))))),
    );
  }
}
