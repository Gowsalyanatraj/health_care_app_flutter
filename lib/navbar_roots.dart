import 'package:flutter/material.dart';
import 'package:health_care_app/screens/home_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    //HOMESCREEN
    HomeScreen(),
    //MESSAGES SCREEN
    Container(),
    //SCHEDULE SCREEN
    Container(),
    //SETTING SCREEN
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            
          },

        ),
      ),
    );
  }
}
