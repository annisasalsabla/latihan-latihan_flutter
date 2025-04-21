import 'package:flutter/material.dart';
import 'package:project1/Screen/latihan_form/page_detail_dosen.dart';
import 'package:project1/Screen/latihan_form/page_grid_dosen.dart';
import 'package:project1/Screen/latihan_form/page_register.dart';
import 'package:project1/Screen/latihan_yummy/page_splash_screen.dart';
import 'package:project1/Screen/nav_bar/page_tab_bar.dart';
import 'package:project1/Screen/page_search_list.dart';
import 'package:project1/map/map_multi_markers_page.dart';
import 'package:project1/map/map_page.dart'; //

import 'screen/page_satu.dart';
import 'screen/page_dua.dart';
import 'screen/page_tiga.dart';
import 'screen/page_empat.dart';
import 'screen/page_gambar.dart';
import 'screen/page_url_image.dart';
import 'screen/page_cached_image.dart';
import 'screen/page_notification.dart';
import 'screen/page_list_data.dart';
import 'screen/page_simple_login.dart';
import 'screen/login_toast.dart';

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
      body: SingleChildScrollView( // 🔄 Kalau banyak tombol, pakai scroll
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text("Selamat Datang di Flutter App pertama MI 2B"),

              _buildButton(context, "Page 1", const PageSatu()),
              _buildButton(context, "Page 2", const PageDua()),
              _buildButton(context, "Page 3", const PageTiga()),
              _buildButton(context, "Page 4", const PageEmpat()),

              _buildButton(context, "Page Gambar", const PageGambar()),
              _buildButton(context, "Page URL Image", const PageUrl()),
              _buildButton(context, "Page Cached Image", const PageCachedImage()),

              _buildButton(context, "Page Notification", const PageNotification()),
              _buildButton(context, "Page List Data", const PageListData()),

              _buildButton(context, "Page Simple Login", const PageSimpleLogin()),
              _buildButton(context, "Page Login2", const LoginToast()),

              _buildButton(context, "Page Tab Bar", const PageTabBar()),
              _buildButton(context, "Page Form Dosen", const PageRegister()),
              _buildButton(context, "Page Grid Dosen", const PageGridDosen()),

              _buildButton(context, "Page Yummy Apps", const SplashScreen()),
              _buildButton(context, "Page Search List", const PageSearchList()),
              _buildButton(context, "Page Map", const MapPage()),
              _buildButton(context, "Page Map Multi Markers", const MapMultiMarkersPage()),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: MaterialButton(
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
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
