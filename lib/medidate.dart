import 'package:flutter/material.dart';

class medidate extends StatelessWidget {
  const medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: Color(0xFFECF4E2),

      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal:0.0),
                child: Image(image: AssetImage("assets/amos12.png")),
              ))
        ],
      ),
    );
  }
}
