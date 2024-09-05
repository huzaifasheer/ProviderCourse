import 'package:flutter/material.dart';

class ThemeModeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners(); // This will notify all the listeners about the change.
  }
}
