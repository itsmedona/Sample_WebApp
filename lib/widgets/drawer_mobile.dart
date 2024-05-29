import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav_titles.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          backgroundColor: ColorConstant.scaffoldBg,
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
              ),
              for (int i = 0; i < navIcons.length; i++)
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
                  titleTextStyle: TextStyle(
                    color: ColorConstant.whitePrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  onTap: () {},
                  leading: Icon(navIcons[i]),
                  title: Text(navTitles[i]),
                )
            ],
          ),
        );
  }
}