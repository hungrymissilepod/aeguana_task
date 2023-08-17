import 'package:flutter/material.dart';

class LaunchTextField extends StatelessWidget {
  const LaunchTextField({
    super.key,
    required this.hint,
    required this.keyboardType,
  });

  final String hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
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
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF0D3144),
            width: 2,
          ),
        ),
      ),
    );
  }
}
