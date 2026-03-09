import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/choose_category_bottom_sheet.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/date_picker.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/time_picker.dart';
import 'package:intl/intl.dart';

class BottomActiomsRow extends StatefulWidget {
  const BottomActiomsRow({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  State<BottomActiomsRow> createState() => _BottomActiomsRowState();
}

class _BottomActiomsRowState extends State<BottomActiomsRow> {
  TimeOfDay? selectedTime;
  DateTime? selectedDate;
  int? selectedCategory;

  void _onTimePicked(TimeOfDay time) {
    setState(() {
      selectedTime = time;
    });
  }

  void _onDatePicked(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  void _onCategoryPicked(int date) {
    setState(() {
      selectedCategory = date;
    });
  }

  String getFormattedDate() {
    if (selectedDate != null) {
      return DateFormat.yMMMd().format(selectedDate!); // e.g., "Jan 1, 2023"
    }
    return 'Select Date';
  }

  String getFormattedTime() {
    if (selectedTime != null) {
      final now = DateTime.now();
      final selectedDateTime = DateTime(now.year, now.month, now.day,
          selectedTime!.hour, selectedTime!.minute);
      return DateFormat.jm().format(selectedDateTime); // e.g., "5:30 PM"
    }
    return 'Select Time';
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
                showDatePickrtBottomSheet(context, _onDatePicked);
              },
              icon: SvgPicture.asset(AssetImages.tag),
            ),
            const SizedBox(width: 14),
            IconButton(
              onPressed: () {
                chooseCategoryshowlBottomSheet(context, _onCategoryPicked);
              },
              icon: SvgPicture.asset(AssetImages.flag),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            print(selectedCategory);
          },
          // onPressed: widget.onPressed,
          icon: SvgPicture.asset(AssetImages.send),
        ),
      ],
    );
  }
}
