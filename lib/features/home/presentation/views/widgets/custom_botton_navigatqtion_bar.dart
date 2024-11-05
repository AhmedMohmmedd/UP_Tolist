import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/app_color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar(
      {super.key, required this.curentIndex, required this.onItemTapped});
  final int curentIndex;
  final Function(int)? onItemTapped;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: curentIndex,
      onTap: onItemTapped,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetImages.homeBarUnSlected),
          activeIcon: SvgPicture.asset(AssetImages.homeBarSlected),
          label: 'Home',
          backgroundColor: AppColor.scendColor,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetImages.clockBarUnSlected),
          activeIcon: SvgPicture.asset(AssetImages.clockBarSlected),
          label: 'Focuse',
          backgroundColor: AppColor.scendColor,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetImages.calendarBarUnSlected),
          activeIcon: SvgPicture.asset(AssetImages.calendarBarSlected),
          label: 'Calendar',
          backgroundColor: AppColor.scendColor,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AssetImages.userBarUnSlected),
          label: 'Profile',
          backgroundColor: AppColor.scendColor,
        ),
      ],
    );
  }
}
