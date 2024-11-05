import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/daliy_tasks/presentation/views/widgets/sleep_time_section.dart';

class DaliyTasks extends StatelessWidget {
  const DaliyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sleep Time ,',
                style: TextStyles.stylesBold20(),
              ),
              const SizedBox(
                height: 14,
              ),
              const SleepTimeSection(),
              const SizedBox(
                height: 14,
              ),
              const Divider(
                height: 2,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 14,
              ),
              Text(
                'Daily Repeated Tasks ,',
                style: TextStyles.stylesBold20(),
              ),
              const SizedBox(
                height: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetImages.homeIndex),
                  Center(
                    child: Text(
                      'here you can add tasks that repeated Every day',
                      style: TextStyles.stylesreguler14(),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
