import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255))),
            fillColor: Color.fromARGB(255, 255, 253, 253),
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
      ),
    );
  }
}
// menggunakan stateless dikarenakan widget ini hanya bertugas menampilkan TextField dengan konfigurasi tertentu seperti controller, obscureText, dan hintText. Tampilan TextField ini tidak akan berubah selama widget ada di dalam widget tree dan tidak memerlukan perubahan status internal yang harus dipantau.