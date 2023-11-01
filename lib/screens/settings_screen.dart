import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Column(
        children: [
          const Text(
            "Settings",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
         const SizedBox(height: 30),
         const ListTile(
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
            
            subtitle: Text("Profile"),
          ),
          const Divider(height: 50),
          ListTile(
            onTap: () {},
            leading: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                shape: BoxShape.circle,
              ),
              child: const Icon(CupertinoIcons.person,
              color: Colors.blue,
              size: 35,
              ),
            ),
            title: const Text("Profile",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          SizedBox(height: 20.0,)
        ],
      ),
    );
  }
}
