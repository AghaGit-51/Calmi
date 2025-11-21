import 'package:flutter/material.dart';
import '../../widgets/custom_widgets.dart';
import 'verify_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Akun", style: TextStyle(fontWeight: FontWeight.bold))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Text("Atau daftar dengan", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
             Row(
              children: const [
                Expanded(child: SocialButton(label: "Google", icon: Icons.g_mobiledata, color: Colors.red)),
                SizedBox(width: 16),
                Expanded(child: SocialButton(label: "Facebook", icon: Icons.facebook, color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 24),
            const Text("Masukkan data dirimu untuk mendaftar", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 16),
            const CustomTextField(label: "Email"),
            const CustomTextField(label: "Buat Nama"),
            const CustomTextField(label: "Buat Kata Sandi", isPassword: true),
            const CustomTextField(label: "Konfirm Kata Sandi", isPassword: true),
            const SizedBox(height: 24),
            
            PrimaryButton(
              label: "DAFTAR", 
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VerifyScreen()))
            ),
          ],
        ),
      ),
    );
  }
}