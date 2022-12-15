import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio/radio.dart';
import 'package:islami/seabha/seabha.dart';
import 'package:islami/settings/setting.dart';
import 'package:islami/theme_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
//import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 4;
  List<Widget> taps = [Quran(), Hadeth(), Seabha(), RadioTap(),Setting()];
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.currentThem==ThemeMode.light?
                  'assets/images/default_bg.png': 'assets/images/dark_bg.png'
                   ),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: (Text(
            AppLocalizations.of(context)!.islami,
            style:Theme.of(context).textTheme.titleSmall,
          )),
          //centerTitle: true,
          //backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar:
        Theme(
          data:provider.currentThem==ThemeMode.light?  Theme.of(context)
              .copyWith(canvasColor: ThemeHelper.primiary ):Theme.of(context)
              .copyWith(canvasColor: ThemeHelper.primiarydark ), //change background
          child: BottomNavigationBar(
            //backgroundColor: Theme.of(context).backgroundColor,
            selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedIconTheme?.color,
            //showUnselectedLabels: true,
            //currentIndex: 2,
            currentIndex: selectedIndex,
            onTap: (clickIndex) {
              selectedIndex = clickIndex;
              setState(() {});
            },

            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label:  AppLocalizations.of(context)!.ahadeth),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label:  AppLocalizations.of(context)!.sebha),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label:  AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label:  AppLocalizations.of(context)!.setting),
            ],
          ),
        ),
        body: taps[selectedIndex],
      ),
    );
  }
}
