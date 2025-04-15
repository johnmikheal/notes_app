import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tkuo/const.dart';
import 'package:tkuo/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tkuo/models/note_models.dart';
import 'package:tkuo/simple_block_observer.dart';
import 'package:tkuo/views/notes_views.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelsAdapter());
  await Hive.openBox<NoteModels>(knotesBox);
  Bloc.observer = SimpleBlockObserver();

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
