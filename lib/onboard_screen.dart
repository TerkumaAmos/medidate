import 'package:flutter/material.dart';
import 'package:harmony_hush/landing_page.dart';
import 'package:harmony_hush/sign_in.dart';
import 'package:harmony_hush/sign_up.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 310,
            height: 234,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image2.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 50),
          const Center(
            child: Text(
              "We are what we do",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
                'Foster global peace and well-being through \n     accessible, guided meditation practices '),
          ),
          const SizedBox(height: 40),
          Container(
            height: 55,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.red,

                borderRadius: BorderRadius.circular(30)
            ),
            child:const  Center(
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: RichText(
              text: TextSpan(
                  text: "Already have an Account ?",
                  style: const TextStyle(color: Colors.black),
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        //alignment: PlaceholderAlignment.middle,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                          child: const Text(
                            textAlign: TextAlign.start,
                            ' SIGN IN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF609966),
                            ),
                          ),
                        ))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
