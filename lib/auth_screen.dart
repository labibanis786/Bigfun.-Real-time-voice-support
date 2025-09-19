import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _phone = TextEditingController();
  final _code = TextEditingController();
  String _vid = '';
  bool _sent = false;

  Future<void> _send() async {
    final phone = _phone.text.trim();
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (cred) async {
        await FirebaseAuth.instance.signInWithCredential(cred);
        if (mounted) Navigator.pushReplacementNamed(context, '/home');
      },
      verificationFailed: (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Failed: \$e')));
      },
      codeSent: (id, token) {
        setState(() { _vid = id; _sent = true; });
      },
      codeAutoRetrievalTimeout: (id) { _vid = id; },
    );
  }

  Future<void> _verify() async {
    final cred = PhoneAuthProvider.credential(verificationId: _vid, smsCode: _code.text.trim());
    await FirebaseAuth.instance.signInWithCredential(cred);
    if (mounted) Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login (Phone OTP)')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _phone, decoration: const InputDecoration(labelText: 'Phone (+countrycode...)')),
            const SizedBox(height: 12),
            ElevatedButton(onPressed: _send, child: const Text('Send OTP')),
            if (_sent) ...[
              const SizedBox(height: 12),
              TextField(controller: _code, decoration: const InputDecoration(labelText: 'Enter OTP')),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: _verify, child: const Text('Verify')),
            ]
          ],
        ),
      ),
    );
  }
}
