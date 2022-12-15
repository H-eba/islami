import 'package:flutter/material.dart';

class ThemeHelper {
  static Color primiary = Color(0xffB7935F);
  static Color accent = Color(0xff242424);
  static Color primiarydark = Color(0xff141A2E);
  static Color accentdark=Color(0xffFACC1D);
  static Color white =Color(0xffFFFFFF);

  ///light mode
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primiary,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
      dividerTheme: DividerThemeData(color: primiary,thickness: 3),
      textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: ThemeHelper.accent),
              titleSmall: TextStyle(color: ThemeHelper.accent,fontWeight: FontWeight.bold,
              fontSize: 30),
        titleMedium: TextStyle(color:ThemeHelper.accent,fontSize: 20),
          titleLarge: TextStyle(color: ThemeHelper.primiary,fontWeight: FontWeight.bold,fontSize: 25),

      )
      ,
      iconTheme: IconThemeData(color: ThemeHelper.primiary,size: 50),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor:ThemeHelper.primiary,
          selectedIconTheme: IconThemeData(color: ThemeHelper.accent)));

  ///dark mode
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      primaryColor: primiarydark,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,


          )),
    dividerTheme: DividerThemeData(color: accentdark,thickness: 3),
      textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          titleSmall: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color:ThemeHelper.accentdark,fontSize: 20),
      titleLarge: TextStyle(color: ThemeHelper.accentdark,fontWeight: FontWeight.bold,fontSize: 25)),
      iconTheme: IconThemeData(color: ThemeHelper.accentdark),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ThemeHelper.primiarydark,
          selectedIconTheme: IconThemeData(color: ThemeHelper.accentdark),


      ),
 );
}
