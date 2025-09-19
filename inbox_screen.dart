import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final messages = ['Welcome to BigFun', 'You received 20 diamonds', 'Friend invited you'];
    return Scaffold(
      appBar: AppBar(title: const Text('Inbox')),
      body: ListView.builder(itemCount: messages.length, itemBuilder: (context, index) => ListTile(leading: const Icon(Icons.mail), title: Text(messages[index]))),
    );
  }
}
