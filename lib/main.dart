import 'package:flutter/material.dart';
import 'package:tkuo/screens/home_page.dart';

void main() {
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
