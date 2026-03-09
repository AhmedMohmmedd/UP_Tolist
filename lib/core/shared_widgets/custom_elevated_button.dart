import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/app_color.dart';

class CustomElevatedButtonFullWidth extends StatelessWidget {
  const CustomElevatedButtonFullWidth({
    super.key,
    required this.titel,
  });
  final String titel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primeryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
        child: Text(
          titel,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
