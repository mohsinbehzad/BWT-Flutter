import 'package:flutter/material.dart';
import 'package:multi_theme_app_using_mvvm/model/theme_model.dart';

class ThemeViewModel with ChangeNotifier {
  ThemeModel _themeModel = ThemeModel.light(); 

  ThemeData get themeData => _themeModel.themeData; 
  
  void toggleTheme() {
    if (_themeModel.isLightTheme) {
      _themeModel = ThemeModel.dark();
    } else {
      _themeModel = ThemeModel.light();
    }
    notifyListeners();
  }
}
