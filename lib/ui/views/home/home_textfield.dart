import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({
    super.key,
    required this.hint,
  });

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: 'Futura',
        ),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD4D4D4),
            width: 2,
          ),
        ),
      ),
    );
  }
}
