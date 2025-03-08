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
                icon: const BackButton(
                  style: ButtonStyle(iconSize: WidgetStatePropertyAll(20)),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 110),
            child: Text(
              'Create your account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 110),
            height: 55,
            width: 320,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF609966)),
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LandingPage()),
                // );
              },
              child: const Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
