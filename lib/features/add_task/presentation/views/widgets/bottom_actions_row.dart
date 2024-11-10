import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/choose_category_bottom_sheet.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/date_picker.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/time_picker.dart';

class BottomActiomsRow extends StatefulWidget {
  const BottomActiomsRow({super.key});

  @override
  State<BottomActiomsRow> createState() => _BottomActiomsRowState();
}

class _BottomActiomsRowState extends State<BottomActiomsRow> {
  TimeOfDay? selectedTime;

  void _onTimePicked(TimeOfDay time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ShowTimePickerr(onTimePicked: _onTimePicked),
            const SizedBox(width: 14),
            IconButton(
              onPressed: () {
                showDatePickrtBottomSheet(context);
              },
              icon: SvgPicture.asset(AssetImages.tag),
            ),
            const SizedBox(width: 14),
            IconButton(
              onPressed: () {
                chooseCategoryshowlBottomSheet(context);
              },
              icon: SvgPicture.asset(AssetImages.flag),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            print(selectedTime);
          },
          icon: SvgPicture.asset(AssetImages.send),
        ),
      ],
    );
  }
}
