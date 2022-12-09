import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/sura_details/sura_details.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      HomeScreen.routeName:(_)=>HomeScreen(),
      SuraDetails.routeName:(_)=>SuraDetails(),
    },
    initialRoute: HomeScreen.routeName,
  ));
}



