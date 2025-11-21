import 'package:flutter/material.dart';
import '../core/constants.dart';
import 'home/dashboard_screen.dart';
import 'child/child_select_screen.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({super.key});
  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  int _idx = 0;
  final List<Widget> _screens = [
    DashboardScreen(),
    const Center(child: Text("Statistik (Coming Soon)")),
    const ChildSelectScreen(),
    const Center(child: Text("Riwayat (Coming Soon)")),
    const Center(child: Text("Profil (Coming Soon)")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_idx],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: Offset(0, -5))]
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: BottomNavigationBar(
            currentIndex: _idx,
            onTap: (i) => setState(() => _idx = i),
            backgroundColor: kPrimaryBlue, 
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white60,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            selectedLabelStyle: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(fontSize: 10),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
              BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Statistik"),
              BottomNavigationBarItem(icon: Icon(Icons.child_care), label: "Anak"),
              BottomNavigationBarItem(icon: Icon(Icons.history), label: "Riwayat"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
            ],
          ),
        ),
      ),
    );
  }
}