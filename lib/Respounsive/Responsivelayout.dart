import 'package:flutter/cupertino.dart';

class Responsive_layout extends StatelessWidget {
  final Widget mobilescaffold;
  final Widget tabletScaffold;
  final Widget desktopscaffold;
  Responsive_layout(
      {required this.mobilescaffold,
      required this.tabletScaffold,
      required this.desktopscaffold});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobilescaffold;
        } else if (constraints.maxWidth < 1100) {
         return tabletScaffold;
        } else {
          return desktopscaffold;
        }
      },
    );
  }
}
