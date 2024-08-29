import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/constants/theme_data.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/providers/theme_provider.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_){
          return ThemeProvider();
        }),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context,themeProvider,child) {
          return MaterialApp(
            title: 'E Ticaret',
            theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme, context: context),
            home: const HomeScreen(),
          );
        }
      ),
    );
  }
}

//Provider State Management