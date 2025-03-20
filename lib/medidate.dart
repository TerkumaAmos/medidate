import 'package:flutter/material.dart';

class medidate extends StatelessWidget {
  const medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: Color(0xFFECF4E2),
        title:  Stack(

          children: [
            Positioned(

              child: Image(
                image: AssetImage(
                    "assets/amos12.png",
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
