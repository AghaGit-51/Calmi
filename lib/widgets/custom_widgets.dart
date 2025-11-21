import 'package:flutter/material.dart';
import '../core/constants.dart';

// 1. Text Input Custom
class CustomTextField extends StatelessWidget {
  final String label;
  final bool isPassword;
  
  const CustomTextField({super.key, required this.label, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          labelStyle: const TextStyle(color: Colors.grey),
          suffixIcon: const Icon(Icons.close, size: 16, color: Colors.grey)
        ),
      ),
    );
  }
}

// 2. Tombol Biru Utama
class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  
  const PrimaryButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryBlue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
        child: Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

// 3. Tombol Sosial Media
class SocialButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  
  const SocialButton({super.key, required this.label, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: (){},
      icon: Icon(icon, color: color),
      label: Text(label, style: const TextStyle(color: kTextDark)),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        side: BorderSide(color: Colors.grey.shade300)
      ),
    );
  }
}