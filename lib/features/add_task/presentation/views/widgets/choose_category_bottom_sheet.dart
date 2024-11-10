import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/categores_list.dart';
import 'package:up_tolist/features/add_task/presentation/views/widgets/custom_elevated_button.dart';

void chooseCategoryshowlBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: AppColor.scendColor,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            child: Column(
              children: [
                Text(
                  'Choose Category',
                  style: TextStyles.stylesBold16(),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                const SizedBox(
                  height: 16,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10.0,
                  ),
                  itemCount: categorysList.length,
                  itemBuilder: (context, index) {
                    return categorysList[index];
                  },
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomElevatedButton(
                  textColor: Colors.red,
                  text: 'Add Category',
                  color: AppColor.primeryColor,
                  width: MediaQuery.sizeOf(context).width * .9,
                ),
              ],
            ),
          ),
        );
      });
}
