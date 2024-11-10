
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';

class ShowTimePickerr extends StatefulWidget {
  final Function(TimeOfDay) onTimePicked;

  const ShowTimePickerr({
    super.key,
    required this.onTimePicked,
  });

  @override
  State<ShowTimePickerr> createState() => _ShowTimePickerrState();
}

class _ShowTimePickerrState extends State<ShowTimePickerr> {
  TimeOfDay selectedTime = TimeOfDay.now();

  void showTimePickerr(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      helpText: 'Choose Time',
      confirmText: 'Edit',
      context: context,
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: selectedTime,
    );

    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });

      widget.onTimePicked(selectedTime);
    } else {
      widget.onTimePicked(selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showTimePickerr(context);
      },
      icon: SvgPicture.asset(AssetImages.timer),
    );
  }
}
