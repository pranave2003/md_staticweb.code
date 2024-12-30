import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:md/Respounsive/DesktopScaffold/Contactus.dart';
import 'package:md/Respounsive/DesktopScaffold/Home.dart';
import 'package:md/Respounsive/DesktopScaffold/Mdwork.dart';
import 'package:md/Respounsive/DesktopScaffold/TOYs.dart';

import 'myphotos.dart';

class DashboardPage extends StatelessWidget {
  final ScrollController scrollController;

  DashboardPage({required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView(
        controller: scrollController,
        children: [
          Home(),
          SizedBox(
            height: 50,
          ),
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
          MyPhotos(),
          SizedBox(
            height: 30,
          ),
          Toys(),
          SizedBox(
            height: 50,
          ),
          ContactUsPage()
        ],
      ),
    );
  }
}

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<int> _selectedSection = ValueNotifier<int>(0);

  final List<double> _sectionPositions = [
    0, // Home
    1100, // About
    2700, // Service
    // Contact
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _selectedSection.dispose();
    super.dispose();
  }

  void _onScroll() {
    for (int i = 0; i < _sectionPositions.length; i++) {
      if (_scrollController.offset >= _sectionPositions[i] &&
          (i == _sectionPositions.length - 1 ||
              _scrollController.offset < _sectionPositions[i + 1])) {
        _selectedSection.value = i;
        break;
      }
    }
  }

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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          ValueListenableBuilder<int>(
            valueListenable: _selectedSection,
            builder: (context, selectedSection, _) {
              return Row(
                children: [
                  for (int i = 0; i < _sectionPositions.length; i++)
                    TextButton(
                      onPressed: () => scrollTo(_sectionPositions[i]),
                      child: Text(["HOME", "WORKS", "CONTACT"][i],
                          style: GoogleFonts.podkova(
                              fontSize: 15,
                              color: selectedSection == i
                                  ? Colors.red
                                  : Colors.black)
                          // TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   color:
                          //       selectedSection == i ? Colors.red : Colors.white,
                          // ),
                          ),
                    ),
                ],
              );
            },
          ),
          SizedBox(
            width: 200,
          )
        ],
      ),
      body: Stack(
        children: [
          // Scrollable content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DashboardPage(scrollController: _scrollController),
          ),
        ],
      ),
    );
  }
}
