import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(
          fontSize: 15,
          // color: Color(0xFF609966),
        ),
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            hintText: hintText,
            suffixIcon: suffixIcon,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0)),
        controller: controller,
      ),
    
    );
  
  }
}
