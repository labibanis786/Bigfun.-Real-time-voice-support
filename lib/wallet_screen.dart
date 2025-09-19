import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wallet')),
      body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: const [
        Text('Diamonds: 1000'),
        SizedBox(height: 8),
        Text('Top-up & transactions are backend features to implement'),
      ])),
    );
  }
}
