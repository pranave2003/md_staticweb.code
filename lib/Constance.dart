import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var Myappbar = AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  iconTheme: const IconThemeData(color: Colors.white),
);

var Mydrawer = Drawer(
  backgroundColor: Colors.black26,
  child: Column(
    children: [
      SizedBox(
        height: 30,
      ),
      CircleAvatar(
        backgroundColor: Color(0xff46348EFF),
        radius: 60,
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "PRANAV.E",
        style: GoogleFonts.abrilFatface(color: Colors.white, fontSize: 30),
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.pressed)) {
                return Colors
                    .red; // Change color to red when hovered or pressed
              }
              return Colors.white; // Default color
            },
          ),
        ),
        child: const Text("Home"),
      )
    ],
  ),
);
