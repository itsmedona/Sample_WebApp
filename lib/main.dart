import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/HomePage.dart';
import 'package:my_portfolio/styles/theme.dart';

void main() {
  runApp(WebApp());
}

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kCustomTheme,
      title: 'Dona Shaji',
      home: const HomePage(),
    );
  }
}
