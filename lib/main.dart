import 'package:flutter/material.dart';
import 'screen/page_satu.dart';  // Import halaman Page 1
import 'screen/page_dua.dart';   // Import halaman Page 2
import 'screen/page_tiga.dart';  // Import halaman Page 3
import 'screen/page_empat.dart'; // Import halaman Page 4

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PageOne(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplikasi Pertama',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Selamat Datang di Flutter App pertama MI 2B"),
            _buildButton(context, "Page 1", const PageSatu()),
            _buildButton(context, "Page 2", const PageDua()),
            _buildButton(context, "Page 3", const PageTiga()),
            _buildButton(context, "Page 4", const PageEmpat()), // Tombol untuk Page 4
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      color: Colors.purple,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
