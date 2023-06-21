import 'package:flutter/material.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50),
            Align(alignment: Alignment.centerRight,
            child: TextButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context) =>
              //  ));      
                   },
                    child: Text('SKIP',
            style: TextStyle(
              color: Color(0xFF7165D6),
              fontSize: 20,
            ),))),
            SizedBox(height: 30),
            Padding(padding: EdgeInsets.all(20),
            child:Image.asset("assets/health1.png") ,
            ),
            SizedBox(height: 50),
            Text('Doctors Appointment',
            style: TextStyle(
              color: Color(0xFF165D6)
            ),
            )
          ],
        ),

      ) ,
    );
  }
}