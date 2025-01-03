import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md/Respounsive/Common.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 800,
          width: double.infinity,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(5, 0), // Shadow only on the right side
            ),
          ], borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Column(
            children: [
              Magicaldronelogo(width: 700,hight: 100,),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(50),
                            child: FadeInDown(
                              duration: Duration(milliseconds: 1900),
                              child: SizedBox(
                                width: 200,
                                child: Text(
                                    "Magical Drone is a photography platform driven by innovation, quality, safety, and sustainability, capturing breathtaking visuals and transforming moments into masterpieces..........",
                                    style: GoogleFonts.podkova(
                                        fontSize: 20,
                                        color: Colors.grey.shade900)),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
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
                                  width: 80,
                                  height: 80,
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
                              width: 130,
                              height: 130,
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
                                  width: 80,
                                  height: 80,
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
                                  width: 130,
                                  height: 130,
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
                              width: 170,
                              height: 170,
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
                                  width: 130,
                                  height: 130,
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
                                  width: 80,
                                  height: 80,
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
                              width: 130,
                              height: 130,
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
                                  width: 80,
                                  height: 80,
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
                  )
                ],
              ),
            ],
          )),
    );
  }
}
