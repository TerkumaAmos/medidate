import 'package:flutter/material.dart';
import 'package:harmony_hush/Icons.dart';

class Medidate extends StatelessWidget {
  Medidate({super.key});

  final List<Map<String, String>> gridItems = [
    {
      'image': 'assets/hey.png',
      'title': 'Fall Universe',
      'subtitle': '30 Min • Sleep music'
    },
    {
      'image': 'assets/hello.png',
      'title': 'Birds Rising',
      'subtitle': '45 Min • Calm music'
    },
    {
      'image': 'assets/moon.png',
      'title': 'Moon Rising',
      'subtitle': '45 Min • Calm music'
    },
    {
      'image': 'assets/hi.png',
      'title': 'Morning Star',
      'subtitle': '15 Min • Morning music'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xFFECF4E2),
      appBar: AppBar(
        backgroundColor:const  Color(0xFFECF4E2),
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
          // const SizedBox(height: 20),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          // ),
       const   SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding:
                    // _buildCategoryButton(Icons.grid_view, "All", true),
                    // _buildCategoryButton(Icons.favorite_border, "My", false),
                    // _buildCategoryButton(
                    //     Icons.sentiment_dissatisfied, "Anxious", false),
                    // _buildCategoryButton(Icons.nightlight_round, "Sleep", false),
                    // _buildCategoryButton(Icons.child_care, "Kids", false),
                    // const SizedBox(width: 0),

                    // Padding(
                    EdgeInsets.symmetric(horizontal: 10.0),
                child: CardWithIcon(iconData: Icons.grid_view, text: "All"),
              ),
              CardWithIcon(iconData: Icons.favorite_border, text: "My"),
              CardWithIcon(
                  iconData: Icons.sentiment_dissatisfied, text: "Anxious"),
              CardWithIcon(iconData: Icons.nightlight_round, text: "Sleep"),
              CardWithIcon(iconData: Icons.child_care, text: "kids"),
            ],
          ),
       const   SizedBox(height: 10),
          Container(
            height: 200,
            // width: 400,
            margin:const EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              color:const  Color(0xFF3E3E3E),
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
                          Color(0xFF61876E),
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
       const    SizedBox(height: 10),
          // Grid of meditation cards
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 0.5,
                  childAspectRatio: 0.7,
                ),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  return _buildGridItem(
                    gridItems[index]['image']!,
                    gridItems[index]['title']!,
                    gridItems[index]['subtitle']!,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // Meditate tab is selected
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.self_improvement), label: "Meditate"),
          BottomNavigationBarItem(
              icon: Icon(Icons.nightlight_round), label: "Sleep"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Shehan"),
        ],
      ),
    );
  }
}

Widget _buildGridItem(String imagePath, String title, String subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath), // Replace with your image
            fit: BoxFit.fill,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        subtitle,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    ],
  );
}
