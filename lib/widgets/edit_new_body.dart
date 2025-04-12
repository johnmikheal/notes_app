import 'package:flutter/material.dart';
import 'package:tkuo/widgets/custom_app_Bar.dart';
import 'package:tkuo/widgets/custom_text_field.dart';

class EditNewViewBody extends StatelessWidget {
  const EditNewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit Note', icon: Icons.check),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 200,
          ),
        ],
      ),
    );
  }
}
