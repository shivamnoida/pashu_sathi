import 'package:flutter/material.dart';
import 'package:pashu_sathi/screens/home_screen/account_screen.dart';
import 'package:pashu_sathi/screens/home_screen/appointment_screen.dart';
import 'package:pashu_sathi/screens/home_screen/cart_screen.dart';
import 'package:pashu_sathi/screens/home_screen/feed_screen.dart';
import 'package:pashu_sathi/screens/home_screen/home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
  // HomeScreen(),         // index 0
  FeedScreen(),         // index 1
  AppointmentScreen(),  // index 2
  CartScreen(),         // index 3
  AccountScreen(),      // index 4
];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Optionally: Navigate with routes
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/feed');
        break;
      case 2:
        Navigator.pushNamed(context, '/appointment');
        break;
      case 3:
        Navigator.pushNamed(context, '/cart');
        break;
      case 4:
        Navigator.pushNamed(context, '/account');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    const green = Color(0xFF3CAB2E);

    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 15,
              backgroundImage: AssetImage('assets/logo.png'), // your logo here
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
