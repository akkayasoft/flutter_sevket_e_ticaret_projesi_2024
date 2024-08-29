import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/providers/theme_provider.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/widgets/subtitle_text.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/widgets/title_text.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             const Padding(
               padding: EdgeInsets.all(16.0),
               child: TitleText(label: "E Ticaret Projesi",fontSize: 30,maxLines: 1,),
             ),
             SubTitleText(label: 'Şevket Proje'*20,maxLines: 2,),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Proje Başlat',
              ),
            ),
            SwitchListTile(
                title: Text(
                    themeProvider.getIsDarkTheme ? "Koyu Tema" : "Açık Tema"),
                value: themeProvider.getIsDarkTheme,
                onChanged: (value) {
                  themeProvider.setDarkTheme(themeValue: value);
                }),
          ],
        ),
      ),
    );
  }
}
