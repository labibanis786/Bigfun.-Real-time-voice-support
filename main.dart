import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/voice_chat_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/gift_screen.dart';
import 'screens/inbox_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BigFun',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const AuthScreen(),
      routes: {
        '/home': (_) => const HomeScreen(),
        '/profile': (_) => const ProfileScreen(),
        '/wallet': (_) => const WalletScreen(),
        '/gifts': (_) => const GiftScreen(),
        '/inbox': (_) => const InboxScreen(),
        '/voice': (_) => const VoiceChatScreen(),
      },
    );
  }
}
