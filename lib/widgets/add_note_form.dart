import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tkuo/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tkuo/models/note_models.dart';
import 'package:tkuo/widgets/custom_button.dart';
import 'package:tkuo/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            maxLines: 5,
            hint: 'Content',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            onTab: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModels = NoteModels(
                    title: title!,
                    subtitle: subtitle!,
                    Date: DateTime.now().toString(),
                    color: Colors.amber.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModels);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
