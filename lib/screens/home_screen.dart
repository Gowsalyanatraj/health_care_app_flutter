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
    return const SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Hello Keerthi",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500
              ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/doctor1.jpg'),
              )
            ],
          ),
          )
        ],
      ),
    );
    
  }
}
