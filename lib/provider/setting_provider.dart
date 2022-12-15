import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  String currentLocal="en";
  ThemeMode currentThem=ThemeMode.light;
 void changeCurrentLocal(String newLocal){
   currentLocal=newLocal;
   notifyListeners();
 }
 void changeThemeMode(ThemeMode newMode){
   currentThem=newMode;
   notifyListeners();
 }
}