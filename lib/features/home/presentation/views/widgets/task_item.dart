
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomTaskItem extends StatelessWidget {
  const CustomTaskItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: AppColor.scendColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.scendColor,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do Math HomeWork',
                  style: TextStyles.stylesreguler16(),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today At 18:20',
                      style: TextStyles.stylesreguler14(),
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xff809CFF)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                AssetImages.categoryunversity),
                            const SizedBox(
                              height: 8,
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Unversity',
                                style: TextStyles.stylesreguler14(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
