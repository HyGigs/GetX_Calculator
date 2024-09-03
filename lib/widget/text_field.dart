import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final bool obscureText;
  final double fontSize;
  final Color textColor;
  final Color labelTextColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.keyboardType,
    required this.obscureText,
    required this.fontSize,
    required this.textColor,
    required this.labelTextColor,
    required this.borderColor,
    required this.focusedBorderColor,
    required this.enabledBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 19.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: labelTextColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: focusedBorderColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: enabledBorderColor,
            ),
          ),
        ),
      ),
    );
  }
}
