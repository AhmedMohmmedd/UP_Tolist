
import 'package:flutter/material.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetImages.logo),
          const SizedBox(
            height: 4,
          ),
          Text(
            'UpTodo',
            style: TextStyles.stylesBold40(),
          ),
        ],
      ),
    ));
  }
}
