import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
            fillColor: Color.fromARGB(255, 255, 253, 253),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      ),
    );
  }
}
