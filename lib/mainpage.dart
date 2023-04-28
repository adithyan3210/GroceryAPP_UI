import 'package:flutter/material.dart';
import 'package:grocery_ui/PofilePage.dart';
import 'package:grocery_ui/cartpage.dart';
import 'package:grocery_ui/secondStage.dart';
import 'package:grocery_ui/favpage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int touch = 0;
  List navigationPage = [
    HomePage(),
    CartScreen(),
    WishlistPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPage.elementAt(touch),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: touch,
        onTap: (index) {
          setState(() {
            touch = index;
          });
        },
        selectedItemColor: Color(0xff4F7B39),
        unselectedItemColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: "order"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: "favorite"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box_outlined,
              ),
              label: "account"),
        ],
      ),
    );
  }
}
