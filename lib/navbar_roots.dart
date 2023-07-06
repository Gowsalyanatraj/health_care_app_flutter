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
    return Scaffold();
  }
}
