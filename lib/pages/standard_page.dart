import 'package:flutter/material.dart';
import 'package:travel/pages/bar_item_page.dart';
import 'package:travel/pages/home_page.dart';
import 'package:travel/pages/my_page.dart';
import 'package:travel/pages/search_page.dart';

class StanderdPage extends StatefulWidget {
  const StanderdPage({Key? key}) : super(key: key);

  @override
  State<StanderdPage> createState() => _StanderdPageState();
}

class _StanderdPageState extends State<StanderdPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage()
  ];
  int currentIndex =0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem( label:'app',icon: Icon(Icons.apps)),
          BottomNavigationBarItem( label:'app',icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem( label:'app',icon: Icon(Icons.search)),
          BottomNavigationBarItem( label:'app',icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
