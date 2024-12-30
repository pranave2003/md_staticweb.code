import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../Constance.dart';

class Tab_DashboardPage extends StatelessWidget {
  final ScrollController scrollController;

  Tab_DashboardPage({required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        controller: scrollController,
        children: [
          Container(
            height: 600,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.grey,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.green,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.orange,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.yellow,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.blue,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.green.shade900,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.pink,
          ),
          Container(
            height: 600,
            width: 300,
            color: Colors.black87,
          ),
        ],
      ),
    );
  }
}

class Tabletscaffold extends StatefulWidget {
  const Tabletscaffold({super.key});

  @override
  State<Tabletscaffold> createState() => _TabletscaffoldState();
}

class _TabletscaffoldState extends State<Tabletscaffold> {
  final ScrollController _scrollController = ScrollController();
  Widget selectedPage = Tab_DashboardPage(scrollController: ScrollController());

  // Scroll to specific container positions
  void scrollTo(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: Myappbar,
      drawer: Drawer(
        backgroundColor: Colors.black26,
        child: Column(
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              backgroundColor: Color(0xff46348EFF),
              radius: 60,
            ),
            SizedBox(height: 20),
            Text(
              "PRANAV . E",
              style: GoogleFonts.nothingYouCouldDo(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              "FLUTTER DEVELOPER",
              style: GoogleFonts.unna(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            TextButton(
              onPressed: () {
                scrollTo(0);
                Navigator.of(context).pop();
              }, // Scroll to Red Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("HOME"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(600);
                Navigator.of(context).pop();
              }, // Scroll to Grey Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("ABOUT"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(1200);
                Navigator.of(context).pop();
              }, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Service"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(1800);
                Navigator.of(context).pop();
              }, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Skills"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(2400);
                Navigator.of(context).pop();
              }, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Education"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(3000);
                Navigator.of(context).pop();
              }, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Experience"),
            ),
            TextButton(
              onPressed: () {scrollTo(3600);Navigator.of(context).pop();}, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Work"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(4200);
                Navigator.of(context).pop();
              }, // Scroll to Orange Container
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle>(
                  GoogleFonts.unna(fontSize: 15),
                ),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    return states.contains(MaterialState.hovered)
                        ? Colors.red
                        : Colors.grey;
                  },
                ),
              ),
              child: const Text("Contact"),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          LottieBuilder.asset(
            // Replace DecorationImage with LottieBuilder
            "Assets/Animation - 1729701670041.json",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          // Other content on top of the animation
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:
                        Tab_DashboardPage(scrollController: _scrollController),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
