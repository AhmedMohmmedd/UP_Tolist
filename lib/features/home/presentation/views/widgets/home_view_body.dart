import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/shared_widgets/custom_text_field.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/custom_category_item.dart';
import 'package:up_tolist/features/home/presentation/views/widgets/task_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextField(
              hint: 'Search for your task...',
              prefix: Icons.search,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.scendColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  'Today',
                  style: TextStyles.stylesreguler16(),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: CustomTaskItem(),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColor.scendColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  'Completed',
                  style: TextStyles.stylesreguler16(),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: CustomTaskItem(),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
