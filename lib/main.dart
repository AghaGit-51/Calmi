import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/constants.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const CalmiBandApp());
}

class CalmiBandApp extends StatelessWidget {
  const CalmiBandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CalmiBand',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryBlue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.plusJakartaSansTextTheme(), // Pastikan package google_fonts terinstall
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryBlue),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}