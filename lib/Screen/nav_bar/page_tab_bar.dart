import 'package:flutter/material.dart';
import 'package:project1/Screen/nav_bar/page_grid_view.dart';
import 'package:project1/Screen/nav_bar/page_list_view.dart';
import 'package:project1/Screen/nav_bar/page_resgister.dart';

class PageTabBar extends StatefulWidget {
  const PageTabBar({super.key});

  @override
  State<PageTabBar> createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Nav Bar",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: TabBarView(controller: tabController, children: const [PageRegister(), PageGridView(), PageListView()]),
      bottomNavigationBar: BottomAppBar(  // Mengubah buttonNavigationBar menjadi bottomNavigationBar dan ButtonAppBar menjadi BottomAppBar
        child: TabBar(controller: tabController, tabs: const [ // Menambahkan const pada tabs agar sesuai dengan TabBarView
          Tab(text: 'Form Register', icon: Icon(Icons.input)),
          Tab(text: 'Grid View', icon: Icon(Icons.input)),
          Tab(text: 'List View', icon: Icon(Icons.input)),

        ]),
      ),
    );
  }
}
