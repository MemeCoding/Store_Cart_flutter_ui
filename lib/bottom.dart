import 'package:fruits_shop/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:fruits_shop/constant.dart';
import 'package:fruits_shop/screens/check_out.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> listBottom = const [
      BottomNavigationBarItem(icon: Icon(Icons.store_outlined), label: 'Store'),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined), label: 'My Cart'),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline), label: 'Favorites'),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Account'),
      BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz_outlined), label: 'More'),
    ];

    getPage() {
      switch (_selectedIndex) {
        case 0:
          {
            return const HomePage();
          }
        case 1:
          {
            return const HomePage();
          }
        case 2:
          {
            return const HomePage();
          }
        case 3:
          {
            return const HomePage();
          }
        case 4:
          {
            return const CheckOutPage();
          }
      }
    }

    return Scaffold(
      body: getPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: green,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        items: listBottom,
      ),
    );
  }
}
