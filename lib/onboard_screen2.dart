import 'package:flutter/material.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0EECD),
      appBar: AppBar(
        backgroundColor: Color(0xFFE0EECD),
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/image4.png"),
          ),
          Text("")
        ],
      ),
    );
  }
}
