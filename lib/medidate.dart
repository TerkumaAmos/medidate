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

          title: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Meditate"),
            ],
          ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text("Explore Inner Peace, One Meditation at a time",
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: CardWithIcon(iconData: Icons.arrow_back, text:"All" ),
              ),
              CardWithIcon(iconData: Icons.arrow_back, text:"My" ),
              CardWithIcon(iconData: Icons.arrow_back, text:"Anxious" ),
              CardWithIcon(iconData: Icons.arrow_back, text:"Anxious" ),
              CardWithIcon(iconData: Icons.arrow_back, text:"Anxious" ),

            ],
          ),
          Container(
            height: 200,
            width: 380,
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            decoration: BoxDecoration(
              color: Color(0x3E3E3E),

              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image:

              AssetImage(

                  "assets/terks.png",

              ),
                fit:BoxFit.cover,
              ),
            ),
            child:  Stack(
              children: [
                Positioned(
                     top:40,
                    left: 110,

                    child: Text("The Forest Moon",
                      style: TextStyle(
                          color: Colors.white,
                        fontSize: 20,
                      ),
                    ),


                ),
                Positioned(
                  top: 70,
                    left: 40,
                    child: Text("Always Knew the greatest things in life are free \n   So i invested my money in your company ",
                      style: TextStyle(color: Colors.white
                    ),)
                ),
                Positioned(
                  top: 160,
                    left: 10,
                    child: SizedBox(
                      width: 107,
                      height: 30,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Color(0x61876E),

                          ),
                         // minimumSize: WidgetStatePropertyAll(Size(5, 30),),
                        ),
                          onPressed:(){}, child:
                      Text("Premium",style: TextStyle(color: Colors.white),), ),
                    ),
                ),
                Positioned(
                  top: 150,
                  left: 170,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color(0xFFECF4E2),

                      ),
                      minimumSize: WidgetStatePropertyAll(Size(50, 30),),
                    ),
                    onPressed:(){}, child:
                  Text("START",style: TextStyle(color: Colors.black),
                  ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left:20,right: 20,top: 5),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/hey.png"),
                      fit:BoxFit.cover

                  ),
                  color: Color(0x3E3E3E),

                  borderRadius: BorderRadius.circular(20),

                ),


              ),
  Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.black,

    ),
    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Transform.translate(
              offset: const Offset(0, -20), // Moves up 20px
              child: const Text(
                "Fall universe",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Transform.translate(
              offset: Offset(0, -20),
                child: Text("30 min . Sleep music ",style: TextStyle(fontSize: 15),),),
          ),
          Transform.translate(
            offset: Offset(0, -20),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/moon.png")),
                color: Color(0x3E3E3E),

              ),
            ),
          ),
        ],
      ),

    );
  }
}
