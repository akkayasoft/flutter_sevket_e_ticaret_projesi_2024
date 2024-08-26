import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/constants/app_colors.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/constants/theme_data.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Ticaret',
      theme: Styles.themeData(isDarkTheme: false, context: context),
      home: const HomeScreen(),
    );
  }
}

//Provider State Management