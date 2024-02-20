import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintext;

  const CustomTextfield({super.key, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color.fromARGB(212, 41, 41, 41)),
      decoration: InputDecoration(
        fillColor: Color.fromARGB(255, 255, 255, 255),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: Color.fromARGB(255, 241, 240, 240))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 251, 251, 251))),
        hintText: hintext,
        hintStyle:
            const TextStyle(color: Color.fromARGB(196, 126, 126, 126), fontWeight: FontWeight.w500),
      ),
    );
  }
}
