import 'package:flutter/material.dart';
import 'package:harmony_hush/Icons.dart';

class medidate extends StatelessWidget {
  const medidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor: Color(0xFFECF4E2),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Meditate"),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              "Explore Inner Peace, One Meditation at a time",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CardWithIcon(iconData: Icons.arrow_back, text: "All"),
              ),
              CardWithIcon(iconData: Icons.arrow_back, text: "My"),
              CardWithIcon(iconData: Icons.arrow_back, text: "Anxious"),
              CardWithIcon(iconData: Icons.arrow_back, text: "Anxious"),
              CardWithIcon(iconData: Icons.arrow_back, text: "Anxious"),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color: Color(0x3E3E3E),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/terks.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                  top: 40,
                  left: 110,
                  child: Text(
                    "The Forest Moon",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Positioned(
                    top: 70,
                    left: 40,
                    child: Text(
                      "Always Knew the greatest things in life are free \n   So i invested my money in your company ",
                      style: TextStyle(color: Colors.white),
                    )),
                Positioned(
                  top: 160,
                  left: 10,
                  child: SizedBox(
                    width: 107,
                    height: 30,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0x61876E),
                        ),
                        // minimumSize: WidgetStatePropertyAll(Size(5, 30),),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Premium",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 170,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xFFECF4E2),
                      ),
                      minimumSize: WidgetStatePropertyAll(
                        Size(50, 30),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "START",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                color: Colors.red,
                child: const Image(
                  image: AssetImage("assets/hey.png"),
                  fit: BoxFit.cover,
                ),
                margin: const EdgeInsets.only(left: 10, right: 10),
                height: 180,
                width: 200,
                // decoration: BoxDecoration(
                //   image: const DecorationImage(
                //     image: AssetImage(
                //       "assets/hey.png",
                //     ),
                //     fit: BoxFit.fill,
                //   ),
                //   // color: Color(0x3E3E3E),
                //   color: Colors.red,
                //   borderRadius: BorderRadius.circular(20),
                // ),
              ),
              Transform.translate(
                offset: const Offset(0, -40),
                child: Positioned(
                  child: Container(
                    height: 100,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                      image: const DecorationImage(
                        image: AssetImage("assets/hello.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Fall universe",
              style: TextStyle(fontSize: 20, color: Color(0xFF609966)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "30 Min . Sleep music ",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
