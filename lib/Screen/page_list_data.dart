import 'package:flutter/material.dart';
import 'page_get_data.dart'; // Import halaman tujuan

class PageListData extends StatelessWidget {
  const PageListData({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page List Data',
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){

          return ListTile(
            title: Text('Judul Berita $index'),
            subtitle: Text('Detail Berita $index'),
            onTap: (){
              //proses passing data
              //buat satu file untuk menampung data
              Navigator.push(context, MaterialPageRoute(builder: (context)
              => PageGetData(index)
              ));
            },
          );
        },
      ),
    );
  }
}