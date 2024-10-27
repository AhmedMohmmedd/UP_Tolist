import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    this.color,
    this.textColor, this.width,
  });
  final String text;
  final Color? color;
  final Color? textColor;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(width?? MediaQuery.sizeOf(context).width * .4, 60),
        textStyle: TextStyles.stylesBold16().copyWith(
          color: textColor ?? Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(text),
      ),
    );
  }
}
