
import 'package:flutter/material.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetImages.homeIndex),
          Text(
            'What do you want to do today?',
            style: TextStyles.stylesreguler20(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Tap + to add your tasks',
            style: TextStyles.stylesreguler16(),
          ),
        ],
      ),
    );
  }
}
