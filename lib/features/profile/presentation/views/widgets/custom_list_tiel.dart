import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.titel,
    required this.leading,
  });
  final String titel;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: leading,
      title: Text(
        titel,
        style: TextStyles.stylesreguler16(),
      ),
      trailing: SvgPicture.asset(
        AssetImages.arrowleft,
      ),
    );
  }
}
