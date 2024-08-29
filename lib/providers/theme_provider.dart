import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//mixin yapısını araştır
//Shared Preferences yapısını araştır.
//async - await yapısını araştır.

class ThemeProvider with ChangeNotifier{
  // ignore: constant_identifier_names
  static const THEME_STATUS="THEME_STATUS";
  bool _darkTheme=false;
  bool get getIsDarkTheme=>_darkTheme;

  ThemeProvider(){ //Constructor
    getTheme();
  }

  setDarkTheme({required bool themeValue}) async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, themeValue);
    _darkTheme=themeValue;
    notifyListeners();
  }
  
  Future<bool> getTheme() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    _darkTheme=prefs.getBool(THEME_STATUS)??false; // if else
    notifyListeners();
    return _darkTheme;
  }
  

  


}