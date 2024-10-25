import 'package:flutter/material.dart';
import 'package:up_tolist/core/shared_widgets/custom_app_bar.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/features/add_task/presentation/views/add_task_sheet.dart';
import 'package:up_tolist/features/home/presentation/views/widgets/custom_botton_navigatqtion_bar.dart';
import 'package:up_tolist/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int curentIndex = 0;
  final pages = const [
    HomeViewBody(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];
  void onItemTapped(int index) {
    setState(() {
      curentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: pages[curentIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        curentIndex: curentIndex,
        onItemTapped: onItemTapped,
      ),
      floatingActionButton: curentIndex == 3
          ? null
          : FloatingActionButton(
              backgroundColor: AppColor.primeryColor,
              child: const Icon(
                Icons.add_outlined,
                size: 28,
                color: Colors.white,
              ),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: AppColor.scendColor,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    context: context,
                    builder: (context) {
                      return const IntrinsicHeight(
                        child: AddTaskSheet(),
                      );
                    });
              }),
    );
  }
}
