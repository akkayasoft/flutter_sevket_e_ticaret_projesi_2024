import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Merhaba E Ticaret Projesi'),
            ElevatedButton(onPressed: (){}, child: Text('Proje Başlat')),
          ],
        ),
      ),
    );
  }
}