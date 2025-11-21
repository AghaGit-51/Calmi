import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../widgets/custom_widgets.dart';
import '../main_container.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Daftar Akun", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Verifikasi e-mail anda", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text("masukkan kode 4 digit di email anda:", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            const Text("budi123@gmail.com", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) => Container(
                width: 60, height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white
                ),
                child: const Center(child: TextField(textAlign: TextAlign.center, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), decoration: InputDecoration(border: InputBorder.none))),
              )),
            ),
            const SizedBox(height: 32),
            PrimaryButton(label: "KONFIRMASI", onPressed: () {
               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => const MainContainer()), (route) => false);
            }),
            const Center(child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("kirim ulang kode", style: TextStyle(color: kPrimaryBlue, fontWeight: FontWeight.bold)),
            ))
          ],
        ),
      ),
    );
  }
}