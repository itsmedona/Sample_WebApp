import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/HomePage.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'pages/AboutPage.dart';
import 'pages/ContactsPage.dart';
//import 'pages/ProjectsPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCrmJSgJXRBFJJbx_AQhAmkz7hb36bkg9g",
          appId: "1:571841390889:web:91bcb7ef4ddda11f1a6f38",
          messagingSenderId: "571841390889",
          projectId: "myfrstwebapp"));
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
