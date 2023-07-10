import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "Fever",
    "Sinus",
    "Cough",
    "Head-ache"
  ];
  List images = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView();
  }
}
