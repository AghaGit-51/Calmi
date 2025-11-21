import 'dart:async';
import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Pindah ke Login setelah 2 detik
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              gradient: const LinearGradient(
              colors: [Color(0xFF60A5FA), kPrimaryBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                ),
                  child: Padding(
                        padding: const EdgeInsets.all(20),
                          child: Image.asset("assets/images/logo.png",fit: BoxFit.contain,
                        ),
                        ),
                        ),
            const SizedBox(height: 20),
            const Text("CalmiBand", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kPrimaryBlue)),
            const SizedBox(height: 100),
            const CircularProgressIndicator(color: kPrimaryBlue),
          ],
        ),
      ),
    );
  }
}