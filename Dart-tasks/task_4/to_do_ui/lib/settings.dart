import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";

ThemeData darktheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.brown,
    scaffoldBackgroundColor: Colors.grey[100]);
ThemeData lighttheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.brown,
  scaffoldBackgroundColor: Colors.black87,
);

class settings with ChangeNotifier {
  settings() {
    _loadingprefs();
  }
  SharedPreferences? _prefs;
  bool _darktheme = false;
  bool get darktheem => _darktheme;

  _initailizeprefs() async {
    if (_prefs == Null) {
      _prefs = await SharedPreferences.getInstance();
    }
  }

  _loadingprefs() async {
    await _initailizeprefs();
    _darktheme = _prefs?.getBool("darkThemee") ?? false;
    notifyListeners();
  }

  _saveprefs() async {
    await _initailizeprefs();
    _darktheme = await _prefs!.setBool("darkthemee", _darktheme);
    notifyListeners();
  }

  void toggletheme() {
    _darktheme = !_darktheme;
    notifyListeners();
  }
}
