import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_titles.dart';
//import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
//import 'package:my_portfolio/widgets/header_desktop.dart';
//import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: ColorConstant.scaffoldBg,
        endDrawer: Drawer(
          backgroundColor: ColorConstant.scaffoldBg,
          child: ListView(
            children: [
              for (int i = 0; i < navIcons.length; i++)
                ListTile(
                  leading: Icon(navIcons[i]),
                  title: Text(navTitles[i]),
                )
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            //MAIN
            //HeaderDesktop(),
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
            ),
            //SKILLS
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //PROJECTS
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            //CONTACT
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            //FOOTER
            Container(
              height: 500,
              width: double.maxFinite,
            )
          ],
        ));
  }
}
