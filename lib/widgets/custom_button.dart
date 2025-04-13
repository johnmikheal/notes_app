import 'package:flutter/material.dart';
import 'package:tkuo/const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTab});
  final void Function()? onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: KprimaryColor, borderRadius: BorderRadius.circular(16)),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
