import 'package:flutter/material.dart';
import 'package:up_tolist/core/constansts/asset_images.dart';
import 'package:up_tolist/core/theming/text_styels.dart';
import 'package:up_tolist/features/home/presentation/views/home_view.dart';
import 'package:up_tolist/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigatToHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void navigatToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const HomeView();
        }));
      },
    );
  }
}
