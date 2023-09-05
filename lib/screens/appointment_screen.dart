import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  List images = [
    "doctor1.png",
    "doctor2.png",
    "doctor3.png",
    "doctor4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF6750A4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          const CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage("assets/doctor2.png"),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "Dr. Doctor Name",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5.0),
                          const Text(
                            "Therapist",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 5.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF9F97E2),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                              const SizedBox(width: 20),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF9F97E2),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  CupertinoIcons.chat_bubble_text_fill,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: MediaQuery.of(context).size.height / 1.5,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20, left: 15),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Center(
                      child: Text(
                        "About Doctor",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
                      style: TextStyle(fontSize: 16.0, color: Colors.black54),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          "Reviews",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        const Text(
                          "4.9",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16.0),
                        ),
                        const SizedBox(width: 5.0),
                        const Text(
                          "(124)",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                                color: Color(0xFf7165D6)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: ((context, index) {
                            return Container(
                              margin: const EdgeInsets.all(10),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        spreadRadius: 2)
                                  ]),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 1.4,
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.grey.shade200,
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                            "assets/${images[index]}"),
                                      ),
                                      title: const Text(
                                        "Dr. Doctor Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: const Text("1 day ago"),
                                      trailing: const Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                                color: Colors.black54),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 0.5,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Text(
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        "very much thank you to Dr. Name. He is a great care takeing for my health",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0EEFA), shape: BoxShape.circle),
                        child: Icon(
                          Icons.location_on,
                          color: Color(0xFF7165D6),
                          size: 30,
                        ),
                      ),
                      title: Text(
                        "Kovai, Medical Center",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
