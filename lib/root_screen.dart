import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/card_screen.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/home_screen.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/profile_screen.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/search_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late List<Widget> screens;
  int currentScreen=3;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    screens=[
      HomeScreen(),
      SearchScreen(),
      CardScreen(),
      ProfileScreen(),
    ];
    controller=PageController(initialPage: currentScreen);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        //physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
      ),
    );
  }
}