import 'package:flutter/material.dart';
import 'package:tkuo/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintMaxLines: maxLines,
        hintText: hint,
        hintStyle: const TextStyle(color: KprimaryColor),
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(
          KprimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder([colore]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: colore ?? Colors.white,
        ));
  }
}
