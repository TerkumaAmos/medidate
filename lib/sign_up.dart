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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            const Text(
              'Create your account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF609966), // Button background color
                borderRadius: BorderRadius.circular(30), // Rounded corners
              ),
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LandingPage()),
                  // );
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFF609966),
                      child: Text(
                        'f',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        '    CONTINUE WITH FACEBOOK',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],

                  //  const Text(
                  //   "SIGN UP",
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('CONTINUE WITH GMAIL'))
          ],
        ),
      ),
    );
  }
}
