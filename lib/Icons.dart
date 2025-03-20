import 'package:flutter/material.dart';

class CardWithIcon extends StatelessWidget {
  final IconData iconData;
  final String text;
  const CardWithIcon({
    super.key,
    required this.iconData,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Container(
         decoration: BoxDecoration(
           color: Colors.white,
           borderRadius: BorderRadius.circular(10),
           boxShadow: [
             BoxShadow(
               color: Colors.white.withOpacity(0.9), // White shadow
               blurRadius: 12, // Blur for softness
               spreadRadius: 5.0, // Spread for visibility
               offset: const Offset(0, 0), // Centered shadow
             ),
             BoxShadow(
               color: Colors.grey.withOpacity(0.4), // Gray shadow for contrast
               blurRadius: 5,
               spreadRadius: 1,
               offset: const Offset(0, 2),
             ),
           ]
         ),
         padding: EdgeInsets.all(10),
         child:Icon(
           iconData,
           size: 20,
           color: Colors.black,
         ),
       ),
       SizedBox(height: 10),
       Text(text),
     ],

    );
  }
}
