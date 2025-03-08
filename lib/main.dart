import 'package:flutter/material.dart';
import 'package:harmony_hush/landing_page.dart';
import 'package:harmony_hush/onboard_screen.dart';
import 'package:harmony_hush/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SignUpPage(),
      // Container(
      //   decoration: const BoxDecoration(
      //       image: DecorationImage(image: AssetImage("assets/image1.png"))),
      // ),
    );
  }
}
