import 'dart:html';

import 'package:flutter/material.dart';
import 'package:whatsapp_apk/colors.dart';
import 'package:whatsapp_apk/responsive/responsive_layout.dart';
import 'package:whatsapp_apk/screens/mobile_screen_layout.dart';
import 'package:whatsapp_apk/screens/web_screens_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp UI ',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const responsiveLayout(
            mobileScreenLayout: mobileLayout(), webScreenLayout: webLayout()));
  }
}
