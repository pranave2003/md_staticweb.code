import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mdwork extends StatefulWidget {
  const Mdwork({super.key});

  @override
  State<Mdwork> createState() => _MdworkState();
}

class _MdworkState extends State<Mdwork> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 2000,
          width: 300,
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
              Row(
                children: [
                  FadeInLeft(
                    duration: Duration(milliseconds: 1900),
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: Container(
                        width: 200,
                        height: 200,
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
                              image: AssetImage("Assets/flower.jpg"),
                              fit: BoxFit.cover),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                  FadeInLeft(
                    duration: Duration(milliseconds: 1900),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Data",
                          style: GoogleFonts.podkova(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                            "Data skjdaskj sjhbdjahbsjha sahsvdjhgva sdsavdsgdvagdvsvd sdahvdshgdsadas sdhsvdhasgvdshgdvsgdv shjdbsjdas")
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
            ],
          )),
    );
  }
}
