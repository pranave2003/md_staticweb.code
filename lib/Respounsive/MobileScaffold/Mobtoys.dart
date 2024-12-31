import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mobtoys extends StatefulWidget {
  const mobtoys({super.key});

  @override
  State<mobtoys> createState() => _mobtoysState();
}

class _mobtoysState extends State<mobtoys> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 800,
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
            Text(
              "TOYS",
              style: GoogleFonts.podkova(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/lense.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/iphone.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/Camera.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/LR.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ////////////////////////
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/snapseed.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/picsart.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                FadeInUp(
                  duration: Duration(milliseconds: 1900),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.9),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset:
                                Offset(5, 2), // Shadow only on the right side
                          ),
                        ],
                        image: DecorationImage(
                            image: AssetImage("Assets/vn.png"),
                            fit: BoxFit.cover),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FadeInUp(
              duration: Duration(milliseconds: 1900),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.9),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(5, 2), // Shadow only on the right side
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage("Assets/photoroom.png"),
                        fit: BoxFit.cover),
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
