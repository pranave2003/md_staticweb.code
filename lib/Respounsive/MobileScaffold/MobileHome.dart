import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mobilehome extends StatefulWidget {
  const Mobilehome({super.key});

  @override
  State<Mobilehome> createState() => _MobilehomeState();
}

class _MobilehomeState extends State<Mobilehome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 1200,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(5, 0), // Shadow only on the right side
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: FadeInLeft(
                        duration: Duration(milliseconds: 1900),
                        child: Container(
                          height: 80,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Assets/Magicaldrone.png"),
                                  fit: BoxFit.fill)),
                        ),
                        // child: Text("MAGICAL DRONE",
                        //     style: GoogleFonts.sixtyfour(
                        //         fontSize: 35,
                        //         color: Colors.black,
                        //         fontWeight: FontWeight.bold)),
                      )),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: FadeInDown(
                      duration: Duration(milliseconds: 1900),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                            "Magical Drone is a photography platform driven by innovation, quality, safety, and sustainability, capturing breathtaking visuals and transforming moments into masterpieces..........",
                            style: GoogleFonts.podkova(
                                fontSize: 15, color: Colors.grey.shade900)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Transform.rotate(
                              angle: -10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInLeft(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage("Assets/flower.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1900),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(
                                        5, 2), // Shadow only on the right side
                                  ),
                                ],
                                image: DecorationImage(
                                    image: AssetImage("Assets/eecha.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Transform.rotate(
                              angle: 10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInRight(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image:
                                            AssetImage("Assets/theeppetti.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Transform.rotate(
                              angle: -10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInLeft(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage("Assets/thimbi.JPG"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1900),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(
                                        5, 2), // Shadow only on the right side
                                  ),
                                ],
                                image: DecorationImage(
                                    image: AssetImage("Assets/dharika.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Transform.rotate(
                              angle: 10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInRight(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage("Assets/Ant.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Transform.rotate(
                              angle: -10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInLeft(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "Assets/yellowflower.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          FadeInUp(
                            duration: Duration(milliseconds: 1900),
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.9),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(
                                        5, 2), // Shadow only on the right side
                                  ),
                                ],
                                image: DecorationImage(
                                    image: AssetImage("Assets/mashroom.jpg"),
                                    fit: BoxFit.cover),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Container(
                            child: Transform.rotate(
                              angle: 10 * pi / 180, // Rotate by 30 degrees
                              child: FadeInRight(
                                duration: Duration(milliseconds: 1900),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.9),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: Offset(5,
                                            2), // Shadow only on the right side
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage("Assets/vand.jpg"),
                                        fit: BoxFit.cover),
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Divider(),
              Row(
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("Assets/LOGO.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "We bring your vision to life by capturing timeless moments through a unique perspective. Each frame we create tells a story, blending creativity, precision, and passion. Our focus is on transforming ordinary scenes into extraordinary memories, delivering exceptional results that resonate with emotions and last a lifetime",
                  style: GoogleFonts.podkova(),
                ),
              ))
            ],
          )),
    );
  }
}
