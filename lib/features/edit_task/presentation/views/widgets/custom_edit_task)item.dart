
import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomEditTaskItem extends StatelessWidget {
  const CustomEditTaskItem({
    super.key,
    required this.titel,
    this.child,
    this.svgPicture,
  });
  final String titel;
  final Widget? child;
  final Widget? svgPicture;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(height: 20, child: svgPicture),
              const SizedBox(
                width: 4,
              ),
              Text(
                titel,
                style: TextStyles.stylesreguler12(),
              ),
            ],
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color.fromARGB(255, 54, 56, 63)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
