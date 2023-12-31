import 'package:flutter/material.dart';
import 'package:health_care_app/router/navbar_roots.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Container(
          
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Column(
              
              children: [
                const SizedBox(height:15),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const NavBarRoots(),
                           ));
                        },
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF7165D6),
                            fontSize: 20,
                          ),
                        ))),
               const SizedBox(height: 30),
                Padding(
                  padding:const EdgeInsets.all(20),
                  child: Image.asset("assets/health1.png"),
                ),
               const  SizedBox(height: 0),
                const Text(
                  "Doctor's Appointment",
                  style: TextStyle(
                      color: Color(0xFF7165D6),
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2),
                ),
              const  SizedBox(height: 10),
                const Text(
                  'Appoint Your Doctor',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Material(
                      color: const Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),
                           ));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                      Material(
                      color: const Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 40),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
