import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Do Math HomeWork',
                    style: TextStyles.stylesreguler16(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:const Icon(Icons.edit_note_outlined),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
