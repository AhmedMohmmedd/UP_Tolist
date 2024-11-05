
import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class SleepTimeSection extends StatelessWidget {
  const SleepTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.scendColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CheckboxMenuButton(
                value: true,
                onChanged: (value) {},
                child: Text(''),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.mode_night_outlined,
                        color: Colors.grey,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '10:30  ',
                        style: TextStyles.stylesBold16(),
                      ),
                      Text(
                        'PM',
                        style: TextStyles.stylesreguler10(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.wb_sunny_outlined,
                        color: Colors.amber,
                        size: 14,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '7:00  ',
                        style: TextStyles.stylesBold16(),
                      ),
                      Text(
                        'AM',
                        style: TextStyles.stylesreguler10(),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
