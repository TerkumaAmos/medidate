import 'package:flutter/material.dart';

class medidate extends StatelessWidget {
  const medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF4E2),
        title: const Text(""), // Optional: Add a title if needed, or leave empty
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0), // Optional: Add some padding from the edge
            child: Image(
              image: const AssetImage("assets/amos12.png"),
              width: 40, // Optional: Adjust size as needed
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}