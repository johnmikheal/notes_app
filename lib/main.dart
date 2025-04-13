import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:tkuo/const.dart';
import 'package:tkuo/views/notes_views.dart';

void main() async {
  await Hive.initFlutter(knotesBox);

  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesViews(),
    );
  }
}
