import 'package:flutter/material.dart';
import 'package:get/get.dart';


enum ButtonType { elevated, outlined, text }

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;
  final ButtonType buttonType;
  final double borderWidth;
  final Color borderColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.textColor,
    required this.textSize,
    required this.buttonType,
    required this.borderWidth,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buttonType == ButtonType.elevated
        ? ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        minimumSize: const Size(410, 50),
        textStyle:
        TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: textColor)),
    )
        : OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: borderWidth, color: borderColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        minimumSize: const Size(410, 50),
        textStyle:
        TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
