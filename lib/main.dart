import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import your login screen

void main() {
  runApp(const MyApp()); // Entry point of the Flutter app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide the debug banner
      title: 'BigFun App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set the main theme color
      ),
      home: const LoginScreen(), // The first screen will be LoginScreen
    );
  }
}
