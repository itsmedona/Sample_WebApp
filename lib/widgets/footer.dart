import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
   Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Dona Shaji with Flutter ",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: ColorConstant.whiteSecondary,
        ),
      ),
    );
  }
}