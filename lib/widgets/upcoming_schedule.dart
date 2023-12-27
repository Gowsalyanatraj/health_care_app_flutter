import 'package:flutter/material.dart';

class UpComingSchedule extends StatelessWidget {
  const UpComingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About"),
          SizedBox(height: 15),
          Container(padding: EdgeInsets.symmetric(vertical: 0.5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2
              )
            ]
          )
          )
        ],
      ),
    );
  }
}
