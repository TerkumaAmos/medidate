import 'package:flutter/material.dart';
import 'package:harmony_hush/landing_page.dart';
import 'package:harmony_hush/onboard_screen.dart';
import 'package:harmony_hush/onboard_screen2.dart';
import 'package:harmony_hush/sign_in.dart';
import 'package:harmony_hush/sign_up.dart';

import 'medidate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
      // Container(
      //   decoration: const BoxDecoration(
      //       image: DecorationImage(image: AssetImage("assets/image1.png"))),
      // ),
    );
  }
}
