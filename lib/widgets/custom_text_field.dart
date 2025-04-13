import 'package:flutter/material.dart';
import 'package:tkuo/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field isrequired';
        } else {
          return null;
        }
      },
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
