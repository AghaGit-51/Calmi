import 'package:flutter/material.dart';
import '../../core/constants.dart';
import '../../models/child_model.dart';

class ChildSelectScreen extends StatelessWidget {
  const ChildSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anak", style: TextStyle(fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          const Text("Pilih Anak", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: dummyChildren.length,
              itemBuilder: (context, index) {
                final child = dummyChildren[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(color: kCardGrey, borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(child.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                            Row(children: [const Icon(Icons.location_on, size: 14, color: kPrimaryBlue), const SizedBox(width: 4), Text(child.location, style: const TextStyle(color: kPrimaryBlue, fontSize: 12))])
                          ]),
                          CircleAvatar(radius: 24, backgroundImage: NetworkImage(child.photoUrl))
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        _StatItem(val: "${child.age}", label: "Umur"),
                        _StatItem(val: "${child.weight}", label: "Berat Badan"),
                        _StatItem(val: "${child.height}", label: "Tinggi Badan"),
                      ])
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String val, label;
  const _StatItem({required this.val, required this.label});
  @override
  Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(val, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), Text(label, style: const TextStyle(fontSize: 10, color: Colors.grey))]);
}