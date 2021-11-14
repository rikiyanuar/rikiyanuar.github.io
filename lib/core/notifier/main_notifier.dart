import 'package:flutter/material.dart';

class MainNotifier with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  MainNotifier();

  String get getCurrentTheme => themeMode == ThemeMode.light ? "light" : "dark";

  bool get isDark => themeMode == ThemeMode.light ? false : true;

  toggleMode() {
    themeMode = themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
