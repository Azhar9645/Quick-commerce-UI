import 'package:bw_assignment1/core/constants.dart';
import 'package:bw_assignment1/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    Center(child: Text('Cart Page')),
    Center(child: Text('My Order Page')),
    Center(child: Text('Account Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, -6),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedLabelStyle: j14B,
          unselectedLabelStyle: const TextStyle(
              color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/nav_bar/navbar1G.png',
                width: 45,
                height: 45,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/nav_bar/navbar2.png',
                width: 45,
                height: 45,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/nav_bar/navbar3.png',
                width: 45,
                height: 45,
              ),
              label: 'My Order',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/nav_bar/navbar4.png',
                width: 45,
                height: 45,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
