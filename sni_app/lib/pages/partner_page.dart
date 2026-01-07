import 'package:flutter/material.dart';

class PartnerPage extends StatelessWidget {
  const PartnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partner'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I nostri Partner',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            // ===== INSTANT GAMING =====
            PartnerCard(
              name: 'Instant Gaming',
              description:
                  'Acquista videogiochi digitali a prezzi scontati '
                  'supportando la community.',
            ),

            SizedBox(height: 20),

            // ===== ZAP HOSTING =====
            PartnerCard(
              name: 'ZAP-Hosting',
              description:
                  'Hosting professionale per server di gioco, '
                  'VPS e infrastrutture dedicate.',
            ),
          ],
        ),
      ),
    );
  }
}

class PartnerCard extends StatelessWidget {
  final String name;
  final String description;

  const PartnerCard({super.key, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(description),
          ],
        ),
      ),
    );
  }
}
