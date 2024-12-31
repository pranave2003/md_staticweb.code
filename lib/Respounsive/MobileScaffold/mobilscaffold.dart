import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md/Respounsive/MobileScaffold/MobileHome.dart';

import '../../Constance.dart';
import '../Common.dart';
import '../DesktopScaffold/Contactus.dart';

import 'Mobtoys.dart';
import 'myphotosmobile.dart';

class Mobile_DashboardPage extends StatelessWidget {
  final ScrollController scrollController;

  Mobile_DashboardPage({required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        controller: scrollController,
        children: [
          Mobilehome(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Works",
                style: GoogleFonts.podkova(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          MyPhotos_mobile(),
          mobtoys(),
          ContactUsPage()
        ],
      ),
    );
  }
}

class Mobilscaffold extends StatefulWidget {
  const Mobilscaffold({super.key});

  @override
  State<Mobilscaffold> createState() => _MobilscaffoldState();
}

class _MobilscaffoldState extends State<Mobilscaffold> {
  final ScrollController _scrollController = ScrollController();
  Widget selectedPage =
      Mobile_DashboardPage(scrollController: ScrollController());

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
      backgroundColor: Colors.white,
      appBar: Myappbar,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 30),
            CircleAvatar(
              backgroundColor: Color(0xff46348EFF),
              backgroundImage: AssetImage("Assets/logoblack.JPG"),
              radius: 60,
            ),
            SizedBox(height: 20),
            FadeInLeft(
              duration: Duration(milliseconds: 1900),
              child: Text(
                "Magical Drone",
                style: GoogleFonts.nothingYouCouldDo(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            FadeInLeft(
              duration: Duration(milliseconds: 1900),
              child: Text(
                "since 2022",
                style: GoogleFonts.unna(
                  color: Colors.blueGrey,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 30,
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
                scrollTo(1200);
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
              child: const Text("Work"),
            ),
            TextButton(
              onPressed: () {
                scrollTo(2850);
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
              child: const Text("Contact Us"),
            ),
            Spacer(),
            Instagram(
              hight: 30,
              width: 30,
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Other content on top of the animation
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Mobile_DashboardPage(
                        scrollController: _scrollController),
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
