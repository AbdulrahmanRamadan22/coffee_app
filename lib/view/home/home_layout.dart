import 'package:flutter/material.dart';

import '../card/card_screen.dart';
import '../favorite/favorite_screen.dart';
import 'home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    // const Center(child: Text("Home Screen")),
    // const Center(child: Text("Home Screen2")),
    const FavoriteScreen(),
    const CardScreen(),
    const Center(child: Text("Home Screen4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[index],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(size: 30),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xff967259),
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "shop"),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_sharp), label: "fffff"),
        ],
      ),
    );
  }
}
