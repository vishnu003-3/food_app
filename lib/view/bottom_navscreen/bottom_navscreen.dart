import 'package:flutter/material.dart';
import 'package:food_app/view/bookmark_screen/bookmark_screen.dart';
import 'package:food_app/view/home_screen/home_screen.dart';

class BottomNavscreen extends StatefulWidget {
  const BottomNavscreen({super.key});

  @override
  State<BottomNavscreen> createState() => _BottomNavscreenState();
}

class _BottomNavscreenState extends State<BottomNavscreen> {
  int selectedIndex = 0;
  List screens = [
    HomeScreen(),
    BookmarkScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      // appBar: AppBar(
      //   title: Text("bottom nav bar screen"),
      // ),
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ]),
    );
  }
}
