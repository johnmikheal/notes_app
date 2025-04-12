import 'package:flutter/material.dart';
import 'package:tkuo/widgets/edit_new_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNewViewBody(),
    );
  }
}
