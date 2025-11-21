import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../core/constants.dart';
import '../../models/child_model.dart';

class DashboardScreen extends StatelessWidget {
  // Kita pakai child pertama sebagai contoh
  final ChildProfile child = dummyChildren[0];

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("CalmiBand", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: kPrimaryBlue)),
            const SizedBox(height: 20),
            
            // 1. KARTU PROFIL (Abu-abu)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: kCardGrey, borderRadius: BorderRadius.circular(24)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text(child.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Row(children: [const Icon(Icons.location_on, size: 14, color: kPrimaryBlue), const SizedBox(width: 4), Text(child.location, style: const TextStyle(color: kPrimaryBlue, fontSize: 12))])
                      ]),
                      CircleAvatar(radius: 24, backgroundImage: NetworkImage(child.photoUrl))
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildStat("${child.age}", "Umur"),
                      _buildStat("${child.weight}", "Berat Badan"),
                      _buildStat("${child.height}", "Tinggi Badan"),
                      Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: Colors.white54, borderRadius: BorderRadius.circular(20)), child: const Icon(Icons.swap_horiz, size: 18))
                    ],
                  )
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // 2. KARTU DETAK JANTUNG (Putih + Grafik)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(24),
                boxShadow: [BoxShadow(color: Colors.grey.shade100, blurRadius: 10, spreadRadius: 2)]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Detak Jantung", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: Colors.orange, size: 40),
                      const SizedBox(width: 10),
                      const Text("150", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      const Text(" BPM", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      // Gradient Bar Mockup
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(height: 6, decoration: BoxDecoration(borderRadius: BorderRadius.circular(3), gradient: const LinearGradient(colors: [Colors.blue, Colors.green, Colors.orange]))),
                            const Text("Terganggu", style: TextStyle(fontSize: 10, color: Colors.orange, fontWeight: FontWeight.bold))
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("rata-rata detak jantung dalam 24 jam 90 BPM", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  const SizedBox(height: 16),
                  
                  // Grafik Mini (Sparkline)
                  SizedBox(height: 50, child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [FlSpot(0, 3), FlSpot(2, 1), FlSpot(4, 4), FlSpot(6, 2), FlSpot(8, 5), FlSpot(10, 3)],
                          isCurved: true, color: Colors.orange, barWidth: 2, dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(show: true, color: Colors.orange.withValues(alpha: 0.1))
                        )
                      ]
                    )
                  ))
                ],
              ),
            ),
            
            const SizedBox(height: 20),
            
            // 3. GRID STATISTIK
            Row(
              children: [
                Expanded(child: _buildSmallCard("Tingkat Stres", "02 menit yang lalu", "80%", Icons.sentiment_dissatisfied, Colors.orange)),
                const SizedBox(width: 16),
                Expanded(child: _buildSmallCard("Emosi", "02 menit yang lalu", "35", Icons.sentiment_neutral, Colors.amber, label: "Skor Emosi")),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String val, String label) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(val, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey))]);
  
  Widget _buildSmallCard(String title, String subtitle, String val, IconData icon, Color color, {String? label}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Colors.grey.shade100, blurRadius: 5)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          Text(subtitle, style: const TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 10),
          Row(children: [Icon(icon, color: color, size: 28), const SizedBox(width: 8), Text(val, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold))]),
          if(label == null) ...[
             const SizedBox(height: 8),
             LinearProgressIndicator(value: 0.8, color: color, backgroundColor: Colors.grey[200], minHeight: 6, borderRadius: BorderRadius.circular(3))
          ] else 
             Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey))
        ],
      ),
    );
  }
}