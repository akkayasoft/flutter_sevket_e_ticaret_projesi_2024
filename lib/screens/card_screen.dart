import 'package:flutter/material.dart';
import 'package:flutter_sevket_e_ticaret_projesi_2024/widgets/title_text.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleText(label: 'Card Screen')),
    );
  }
}