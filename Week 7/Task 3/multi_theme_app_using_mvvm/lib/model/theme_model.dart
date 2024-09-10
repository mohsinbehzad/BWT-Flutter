import 'package:flutter/material.dart';
import 'package:multi_theme_app_using_mvvm/model/app_theme.dart';

class ThemeModel {
  final ThemeData themeData;
  final bool isLightTheme;

  ThemeModel({required this.themeData, required this.isLightTheme});

  factory ThemeModel.light() {
    return ThemeModel(themeData: lightMode, isLightTheme: true);
  }

  factory ThemeModel.dark() {
    return ThemeModel(themeData: darkMode, isLightTheme: false);
  }
}
