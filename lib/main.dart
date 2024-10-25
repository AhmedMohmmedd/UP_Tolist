import 'package:flutter/material.dart';
import 'package:up_tolist/features/home/presentation/views/home_view.dart';
import 'package:up_tolist/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UP ToList',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
