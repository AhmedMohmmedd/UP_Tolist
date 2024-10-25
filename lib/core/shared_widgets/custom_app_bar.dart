
import 'package:flutter/material.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Index',
        style: TextStyles.stylesreguler20(),
      ),
      centerTitle: true,
      leading: const Icon(
        Icons.filter_list_outlined,
        color: Colors.white,
        size: 34,
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(
            right: 14,
            top: 5,
          ),
          height: 60,
          width: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                AssetImages.profileDemo,
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
   @override
  Size get preferredSize => const Size.fromHeight(75);
}
