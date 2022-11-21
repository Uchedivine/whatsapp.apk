import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  const responsiveLayout(
      {Key? key,
      required this.mobileScreenLayout,
      required this.webScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxHeight > 900) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      }),
    );
  }
}
