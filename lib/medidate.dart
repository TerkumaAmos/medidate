import 'package:flutter/material.dart';

class medidate extends StatelessWidget {
  const medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: Color(0xFFECF4E2),
        title: const Stack(
          children: [
            Positioned(
              child: Image(
                image: AssetImage("assets/cloud5.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
