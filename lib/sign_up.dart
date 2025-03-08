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
          // margin: EdgeInsets.all(5),
          // padding: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: BackButton(
                  style: ButtonStyle(iconSize: WidgetStatePropertyAll(20)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 60),
            child: Text(
              'Create your account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
