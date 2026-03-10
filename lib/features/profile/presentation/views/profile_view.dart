import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/profile/presentation/views/widgets/custom_list_tiel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Profile',
                  style: TextStyles.stylesreguler20(),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 14,
                  top: 5,
                ),
                height: 85,
                width: 85,
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
              const SizedBox(
                height: 14,
              ),
              Text(
                'Ahmed Mohmmed',
                style: TextStyles.stylesMeduim20(),
              ),
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 58,
                    width: 154,
                    decoration: BoxDecoration(
                      color: const Color(0xff363636),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        '10 Task left',
                        style: TextStyles.stylesreguler16(),
                      ),
                    ),
                  ),
                  Container(
                    height: 58,
                    width: 154,
                    decoration: BoxDecoration(
                      color: const Color(0xff363636),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        '5 Task done',
                        style: TextStyles.stylesreguler16(),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: Divider(
                  height: 34,
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Settings',
                      style: TextStyles.stylesreguler14(),
                    ),
                   
                    CustomListTile(
                      titel: 'App Settings',
                      leading: SvgPicture.asset(
                        AssetImages.setting,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Divider(
                        height: 34,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Account',
                      style: TextStyles.stylesreguler14(),
                    ),
                    
                    CustomListTile(
                      titel: 'Change account name',
                      leading: SvgPicture.asset(
                        AssetImages.userBarUnSlected,
                      ),
                    ),
                    CustomListTile(
                      titel: 'Change account Image',
                      leading: SvgPicture.asset(
                        AssetImages.camera,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Divider(
                        height: 34,
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Uptodo',
                      style: TextStyles.stylesreguler14(),
                    ),
                    CustomListTile(
                      titel: 'About US',
                      leading: SvgPicture.asset(
                        AssetImages.menu,
                      ),
                    ),
                    CustomListTile(
                      titel: 'Support US',
                      leading: SvgPicture.asset(
                        AssetImages.like,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetImages.logout,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          'Log out',
                          style: TextStyles.stylesreguler16().copyWith(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
