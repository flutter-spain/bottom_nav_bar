import 'package:bottom_nav_bar/pages/account.dart';
import 'package:bottom_nav_bar/pages/main.dart';
import 'package:bottom_nav_bar/pages/message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottombar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    MainPage(),
    MessagePage(),
    AccountPage()

    // const Center(
    //   child: Text(
    //     'Home',
    //     style: TextStyle(
    //       fontSize: 50,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
    // const Center(
    //   child: Text(
    //     'Message',
    //     style: TextStyle(
    //       fontSize: 50,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
    // const Center(
    //   child: Text(
    //     'Profile',
    //     style: TextStyle(
    //       fontSize: 50,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        body : _pages[_selectedIndex],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottombar,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Main',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )

    );
  }
}