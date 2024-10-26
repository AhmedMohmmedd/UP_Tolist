import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/custom_elevated_button.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/custom_text_field.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/date_picker.dart';

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
            customTextField(hint: 'Description'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showDatePickrtBottomSheet(context);
                      },
                      icon: SvgPicture.asset(AssetImages.timer),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AssetImages.tag),
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(AssetImages.flag),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AssetImages.send),
                ),
              ],
            )
          ],
        ),
      ),
    );
  

  }
}
