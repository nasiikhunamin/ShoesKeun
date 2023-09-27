import 'package:flutter/material.dart';
import 'package:shoes_app/page/cart_page.dart';
import 'package:shoes_app/page/favorite_page.dart';
import 'package:shoes_app/page/home_page.dart';
import 'package:shoes_app/page/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List page = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
    const ProfilePage()
  ];
  //variable bottom navigation index
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {});
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: const Color(0xff32323C),
          selectedItemColor: const Color(0xffefefef),
          unselectedItemColor: const Color(0xffa6a6a6),
          elevation: 0,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
