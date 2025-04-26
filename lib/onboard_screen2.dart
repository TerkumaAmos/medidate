import 'package:flutter/material.dart';
import 'package:harmony_hush/medidate.dart';

class OnboardScreen2 extends StatelessWidget {
  const OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF4E2),
      ),
      body: Stack(
        children: [
          const Positioned(
            right: 0,
            top: 0,
            child: Image(
              image: AssetImage('assets/cloud4.png'),
            ),
          ),
          const Positioned(
            left: 120,
            top: 90,
            child: Text(
              "Hi Terkuma ! Welcome \n   to HarmonyHush",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          const Positioned(
            left: 60,
            top: 155,
            child: Text(
              "Explore Inner Peace, One Meditation at a time",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          const Positioned(
            right: 60,
            top: 220,
            child: Image(
              image: AssetImage("assets/cloud2.png"),
            ),
          ),
          const Positioned(
            left: 40,
            top: 250,
            child: Image(
              width: 154,
              height: 82,
              image: AssetImage("assets/cloud1.png"),
            ),
          ),
          const Positioned(
            left: -40,
            top: 450,
            child: Image(
              width: 154,
              height: 82,
              image: AssetImage("assets/cloud5.png"),
            ),
          ),
          Stack(
            children: [
              Positioned(
                bottom: -370,
                left: -90,
                child: Container(
                  height: 690,
                  width: 600,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF3C6255),
                  ),
                ),
              ),
              const Positioned(
                top: 350,
                right: -30,
                child: Image(
                  width: 500,
                  height: 170,
                  image: AssetImage("assets/cloud3.png"),
                ),
              ),
              Positioned(
                bottom: 70,
                left: 25,
                child: Container(
                  height: 60,
                  width: 350,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          const WidgetStatePropertyAll(Color(0xFFECF4E2)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Medidate(),
                        ),
                      );
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(
                          0xFF609966,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
