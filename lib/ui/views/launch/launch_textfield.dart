import 'package:flutter/material.dart';

class LaunchTextField extends StatelessWidget {
  const LaunchTextField({
    super.key,
    required this.hint,
    required this.keyboardType,
    required this.textInputAction,
  });

  final String hint;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            color: Color(0xFFD4D4D4),
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(
            color: Color(0xFF0D3144),
            width: 2,
          ),
        ),
      ),
    );
  }
}
