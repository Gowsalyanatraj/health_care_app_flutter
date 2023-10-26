import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          Text(
            "Settings",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/doctor2.png"),
            ),
            title: Text(
              "Dr. Doctor Name",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
