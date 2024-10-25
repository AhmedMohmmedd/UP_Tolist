import 'package:flutter/material.dart';
import 'package:up_tolist/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UP ToList',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
