import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../widgets/custom_widgets.dart';
import '../main_container.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Masuk", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text("Masuk ke", style: kTitleStyle)),
            const Center(child: Text("CalmiBand", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: kPrimaryBlue))),
            const SizedBox(height: 30),
            
            const Center(child: Text("Masuk dengan", style: TextStyle(color: Colors.grey))),
            const SizedBox(height: 16),
            Row(
              children: const [
                Expanded(child: SocialButton(label: "Google", icon: Icons.g_mobiledata, color: Colors.red)),
                SizedBox(width: 16),
                Expanded(child: SocialButton(label: "Facebook", icon: Icons.facebook, color: Colors.blue)),
              ],
            ),
            
            const SizedBox(height: 30),
            const Center(child: Text("Masukkan data dirimu", style: TextStyle(color: Colors.grey))),
            const SizedBox(height: 16),
            
            const CustomTextField(label: "Nama Pengguna"),
            const CustomTextField(label: "Kata Sandi", isPassword: true),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [Checkbox(value: false, onChanged: (v){}), const Text("Ingat Akun Saya", style: TextStyle(fontSize: 12))]),
                TextButton(onPressed: (){}, child: const Text("Lupa kata sandi?", style: TextStyle(fontSize: 12, color: kPrimaryBlue)))
              ],
            ),
            
            const Spacer(),
            PrimaryButton(
              label: "MASUK", 
              onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainContainer()))
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun? "),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterScreen())), 
                  child: const Text("Daftar di sini", style: TextStyle(color: kPrimaryBlue))
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}