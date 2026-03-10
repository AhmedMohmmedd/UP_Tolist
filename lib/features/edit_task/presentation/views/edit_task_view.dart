import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/shared_widgets/custom_elevated_button.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/edit_task/presentation/views/widgets/custom_edit_task)item.dart';

class EditTaskView extends StatelessWidget {
  const EditTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(31, 109, 104, 104),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close_outlined,
                    size: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.scendColor,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Do Math HomeWork',
                              style: TextStyles.stylesBold14(),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit_note_outlined),
                            ),
                          ],
                        ),
                        Text(
                          'Do Math HomeWork',
                          style: TextStyles.stylesreguler12(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              CustomEditTaskItem(
                titel: 'Task Time :',
                svgPicture: SvgPicture.asset(
                  AssetImages.timer,
                ),
                child: Text(
                  'Today At 18:20',
                  style: TextStyles.stylesreguler10(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomEditTaskItem(
                titel: 'Task date :',
                svgPicture: SvgPicture.asset(
                  AssetImages.flag,
                ),
                child: Text(
                  '8/3/2026',
                  style: TextStyles.stylesreguler10(),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              CustomEditTaskItem(
                titel: 'Category :',
                svgPicture: SvgPicture.asset(
                  AssetImages.tag,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(AssetImages.categoryunversity),
                    const SizedBox(
                      width: 4,
                    ),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Unversity',
                        style: TextStyles.stylesreguler12(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AssetImages.trash,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Delete Task',
                      style: TextStyles.stylesreguler12().copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const CustomElevatedButtonFullWidth(
                titel: 'Edit Task',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
