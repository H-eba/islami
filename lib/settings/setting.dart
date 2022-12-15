import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/settings/language_bottom_sheet.dart';
import 'package:islami/settings/theme_buttom_sheet.dart';
import 'package:islami/theme_helper.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget {
  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Column(
      children: [
        Text(
          provider.currentLocal == 'en' ? 'language' : 'اللغة',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        InkWell(
          onTap: () {
            showLanguageButtomSheet();
          },
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  provider.currentLocal == 'en' ? 'English' : 'العربية',
                  style: (Theme.of(context).textTheme.titleLarge),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_downward,
                  size: 30,
                  color: provider.currentThem == ThemeMode.light
                      ? ThemeHelper.accent
                      : ThemeHelper.accentdark,
                )
              ],
            ),
          ),
        ),

        ///theme

        Text(
          'Theme',
          textAlign: TextAlign.start,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        InkWell(
          onTap: () {
            showThemeButtomSheet();
          },
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  provider.currentThem == ThemeMode.light ? 'light' : 'dark',
                  style: (Theme.of(context).textTheme.titleLarge),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_downward,
                  size: 30,
                  color: provider.currentThem == ThemeMode.light
                      ? ThemeHelper.accent
                      : ThemeHelper.accentdark,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showLanguageButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageButtomSheet();
        });
  }

  void showThemeButtomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowThemButtomSheet();
        });
  }
}
