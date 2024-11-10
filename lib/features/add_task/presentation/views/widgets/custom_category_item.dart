import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key, required this.text, required this.image, required this.backgroundColor,
  });
final String text;
final String image;
final int backgroundColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: AspectRatio(
        aspectRatio: 2/3,
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:  Color(backgroundColor)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                   image,
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: TextStyles.stylesreguler12(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
