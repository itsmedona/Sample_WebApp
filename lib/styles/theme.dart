import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

ThemeData kCustomTheme = ThemeData.dark().copyWith(
  iconTheme: const IconThemeData(
    color: ColorConstant.whitePrimary
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorConstant.yellowPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      fixedSize: const Size.fromHeight(45),
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  ),
);