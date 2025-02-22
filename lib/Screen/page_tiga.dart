import 'package:flutter/material.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Tiga'),
        backgroundColor: Colors.green, // Sesuai dengan gambar
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildIconWithLabel(Icons.h_mobiledata, "Mobile", Colors.purple),
            _buildIconWithLabel(Icons.phone, "Phone", Colors.green),
            _buildIconWithLabel(Icons.spa, "Relax", Colors.red),
          ],
        ),
      ),
    );
  }

  // Widget untuk membuat ikon dengan label di bawahnya
  Widget _buildIconWithLabel(IconData icon, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: color),
        const SizedBox(height: 5), // Jarak antara ikon dan teks
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
