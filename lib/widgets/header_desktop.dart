import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/nav_titles.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.transparent, ColorConstant.bgLight1]),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitles[i],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorConstant.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
