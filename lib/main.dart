import 'package:flutter/material.dart';
import 'config/agora_config.dart'; // Agora App ID config

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BigFun Voice Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BigFun Voice Chat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to BigFun!'),
            const SizedBox(height: 20),
            Text('Agora App ID: ${AgoraConfig.appId}'),
          ],
        ),
      ),
    );
  }
}
