import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF6750A4),
      body: SingleChildScrollView(
        child: Column(
          children: [Icon(Icons.arrow_back)],
        ),
      ),
    );
  }
}
