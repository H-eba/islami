import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_Item.dart';
import 'package:islami/hadeth/hadeth_details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/sura_details/sura_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/theme_helper.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';



void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context)=>SettingProvider(),
          child:MyApp())
  );
      }
      class MyApp extends StatelessWidget {
      late SettingProvider provider;

        @override
        Widget build(BuildContext context) {
          provider=Provider.of(context);
          return MaterialApp(
            localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
            supportedLocales: [
              Locale('en', ''), // English, no country code
              Locale('ar', ''), // Arabic, no country code
            ],
            locale: Locale(provider.currentLocal),//detrimind app start with which lanuage
            //themeMode: ThemeMode.dark,
            themeMode: provider.currentThem,

            theme:ThemeHelper.lightTheme,
            darkTheme:ThemeHelper.darkTheme,

            routes: {
              HomeScreen.routeName:(_)=>HomeScreen(),
              SuraDetails.routeName:(_)=>SuraDetails(),
             HadethDetails.routeName:(_)=>HadethDetails(),
            },
            initialRoute:HomeScreen.routeName,
          );


        }
      }


    /*localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
        Locale('en', ''), // English, no country code
        Locale('ar', ''), // Arabic, no country code
    ],
    locale: Locale('ar'),//detrimind app start with which lanuage
    themeMode: ThemeMode.dark,


    theme:ThemeHelper.lightTheme,
    darkTheme:ThemeHelper.darkTheme,

    routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetails.routeName:(_)=>SuraDetails(),
    },
    initialRoute: HomeScreen.routeName,
  ),
      ));
}*/






