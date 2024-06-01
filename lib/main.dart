import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/HomePage.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'pages/AboutPage.dart';
import 'pages/ContactsPage.dart';
//import 'pages/ProjectsPage.dart';

void main() {
  runApp(WebApp());
}

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/projects': (context) => const ProjectsSection(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
