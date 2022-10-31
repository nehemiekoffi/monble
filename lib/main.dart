import 'package:flutter/material.dart';
import 'package:monble/core/constants/app_colors.dart';
import 'package:monble/features/home/pages/app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: AppColors.bodyBackgroundColor,
        fontFamily: 'Inter',
      ),
      home: const AppPage(),
    );
  }
}
