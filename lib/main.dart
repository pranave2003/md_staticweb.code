import 'package:flutter/material.dart';

import 'Respounsive/DesktopScaffold/desktopScaffold.dart';
import 'Respounsive/MobileScaffold/mobilscaffold.dart';
import 'Respounsive/Responsivelayout.dart';
import 'Respounsive/TabletScaffold/tabletscaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Magical Drone',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
        Responsive_layout(
            mobilescaffold: const Mobilscaffold(),
            tabletScaffold: const Tabletscaffold(),
            desktopscaffold: const DesktopScaffold())
    );
  }
}
