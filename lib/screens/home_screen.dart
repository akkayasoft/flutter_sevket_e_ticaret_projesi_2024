import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider=Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Merhaba E Ticaret Projesi',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){}, child: Text('Proje Başlat'),),
            SwitchListTile(
              title: Text(themeProvider.getIsDarkTheme?"Koyu Tema":"Açık Tema"),
              value: themeProvider.getIsDarkTheme, onChanged: (value){
              themeProvider.setDarkTheme(themeValue: value);
            }),
          ],
        ),
      ),
    );
  }
}