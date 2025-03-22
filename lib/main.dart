import 'package:flutter/material.dart';
import 'package:project1/Screen/latihan_form/page_detail_dosen.dart';
import 'package:project1/Screen/latihan_form/page_grid_dosen.dart';
import 'package:project1/Screen/latihan_form/page_register.dart';
import 'package:project1/Screen/latihan_yummy/page_splash_screen.dart';
import 'package:project1/Screen/nav_bar/page_tab_bar.dart';
import 'screen/page_satu.dart';
import 'screen/page_dua.dart';
import 'screen/page_tiga.dart';
import 'screen/page_empat.dart';
import 'screen/page_gambar.dart';
import 'screen/page_url_image.dart';
import 'screen/page_cached_image.dart'; // Import halaman Page Cache Image
import 'screen/page_notification.dart'; // Import halaman Page Notification
import 'screen/page_list_data.dart'; // Import halaman Page List Data
import 'screen/page_simple_login.dart'; // Import halaman Page Simple Login
import 'screen/login_toast.dart'; // Import halaman Page Simple Login



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
            _buildButton(context, "Page 4", const PageEmpat()),
            _buildButton(context, "Page Gambar", const PageGambar()),
            _buildButton(context, "Page URL Image", const PageUrl()),
            _buildButton(context, "Page Cached Image", const PageCachedImage()),
            _buildButton(context, "Page Notification", const PageNotification()),
            _buildButton(context, "Page List Data", const PageListData()), // Tambah tombol baru
            _buildButton(context, "Page Simple Login", const PageSimpleLogin()),
            _buildButton(context, "Page Login2", const LoginToast()),// Tambahkan tombol baru
            _buildButton(context, "Page Tab Bar", const PageTabBar()),// Tambahkan tombol baru
            _buildButton(context, "Page Form Dosen", const PageRegister()),// Tambahkan tombol baru
            _buildButton(context, "Page Grid Dosen", const PageGridDosen()),// Tambahkan tombol baru
            _buildButton(context, "Page Yummy Apps", const SplashScreen()),// Tambahkan tombol baru
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
