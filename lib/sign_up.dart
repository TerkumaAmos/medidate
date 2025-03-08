import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: Color(0xFFECF4E2),
        leading: Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(8),
          child: const CircleAvatar(
            backgroundColor: Color(0xE5E5E5),
            foregroundColor: Color(0xE5E5E5),
            child: Icon(
              Icons.arrow_back,
              color: Colors.green,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Create your account',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
