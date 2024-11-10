import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/bottom_actions_row.dart';
import 'package:up_tolist/core/shared_widgets/custom_text_field.dart';

class AddTaskSheet extends StatelessWidget {
  const AddTaskSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add Task',
              style: TextStyles.stylesBold20(),
            ),
            const SizedBox(
              height: 12,
            ),
            customTextField(hint: 'Titel'),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Description',
              style: TextStyles.stylesreguler18(),
            ),
            const SizedBox(
              height: 12,
            ),
            customTextField(hint: 'Description',maxline: 4),
            const SizedBox(
              height: 30,
            ),
           const BottomActiomsRow()
          ],
        ),
      ),
    );
  }
}
