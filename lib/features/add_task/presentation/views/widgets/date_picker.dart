import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/custom_elevated_button.dart';

void showDatePickrtBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColor.scendColor,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: DatePicker(
                  centerLeadingDate: true,
                  minDate: DateTime(2020),
                  maxDate: DateTime(2030),
                  initialDate: DateTime.now(),
                  onDateSelected: (value) {},
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomElevatedButton(
                    text: 'Cancel',
                    textColor: AppColor.primeryColor,
                  ),
                  CustomElevatedButton(
                    text: 'Choose Time',
                    color: AppColor.primeryColor,
                  ),
                ],
              ),
            ],
          ),
        );
      });
}
