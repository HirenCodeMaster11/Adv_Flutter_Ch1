import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ThemeProvider extends ChangeNotifier
{
  bool isDark = false;

  late SharedPreferences sharedPreferences;
  void changeTheme()
  {
    isDark = !isDark;
    setTheme(isDark);
    notifyListeners();
  }

  Future <void> setTheme(bool value)
  async{
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
    notifyListeners();
  }

  ThemeProvider(theme)
  {
    isDark = theme;
    notifyListeners();
  }
}