
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/date_picker.dart';

class BottomActiomsRow extends StatelessWidget {
  const BottomActiomsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                showTimePicker(
                  helpText: 'Choose Time',
                  confirmText: 'Edit',
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
              },
              icon: SvgPicture.asset(AssetImages.timer),
            ),
            const SizedBox(
              width: 14,
            ),
            IconButton(
              onPressed: () {
                showDatePickrtBottomSheet(context);
              },
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
    );
  }
}
