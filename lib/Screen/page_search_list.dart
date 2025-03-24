import 'package:flutter/material.dart';

class PageSearchList extends StatefulWidget {
  const PageSearchList({super.key});

  @override
  State<PageSearchList> createState() => _PageSearchListState();
}

class _PageSearchListState extends State<PageSearchList> {
  List<String> listDevice = [
    "Laptop",
    "Ponsel",
    "Tablet",
    "Printer",
    "Kamera",
    "Oppo",
    "Xiaomi",
    "Samsung",
    "Asus",
    "Lenovo",
  ];

  bool isCari = true;
  List<String> filterData = [];
  TextEditingController txtCari = TextEditingController();

  _PageSearchListState() {
    txtCari.addListener(() {
      if (txtCari.text.isEmpty) {
        setState(() {
          isCari = true;
        });
      } else {
        setState(() {
          isCari = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0FF), // warna background pink muda
      appBar: AppBar(
        title: Text("Search List"),
        backgroundColor: Colors.blueAccent, // warna hijau seperti gambar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: txtCari,
                decoration: InputDecoration(
                  hintText: "Cari Disini",
                  border: InputBorder.none,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: isCari ? ListView.builder(
                itemCount: listDevice.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(listDevice[index]),
                  );
                },
              ) : CreateListView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget CreateListView() {
    filterData = [];
    for (int i = 0; i < listDevice.length; i++) {
      var item = listDevice[i];
      if (item.toLowerCase().contains(txtCari.text.toLowerCase())) {
        filterData.add(item);
      }
    }
    return HasilSearch();
  }

  Widget HasilSearch() {
    return ListView.builder(
      itemCount: filterData.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filterData[index]),
        );
      },
    );
  }
}
