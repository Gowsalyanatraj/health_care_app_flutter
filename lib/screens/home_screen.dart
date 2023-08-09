import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List symptoms = [
    "Fever",
    "Sinus",
    "Cough",
    "Head-ache",
  ];
  List images = [
    "doctor1.png",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Madan",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/doctor1.png'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color(0xFF7165D6),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(0.8),
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xFF7165D6),
                            size: 35,
                          )),
                      const SizedBox(height: 30.0),
                      const Text(
                        "Client Visit",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "Create an Appointment",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 4)
                      ]),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(0.8),
                          decoration: const BoxDecoration(
                              color: Color(0xFFF0EEFA), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.home_filled,
                            color: Color(0xFF7165D6),
                            size: 35,
                          )),
                      const SizedBox(height: 30.0),
                      const Text(
                        "Home Visit",
                        style: TextStyle(
                            color: Color(0xFF7165D6),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "Call the doctor home",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "What is your symptoms?",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: symptoms.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F6FA),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2)
                      ]),
                  child: Center(
                    child: Text(
                      symptoms[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Popular Doctor",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ),
          GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 2)
                        ]),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/${images[index]}"),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
