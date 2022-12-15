import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:provider/provider.dart';

class ShowThemButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.light);
              },
              child: Text(
                'light',
                style: TextStyle(
                    color: provider.currentThem == ThemeMode.light
                        ? Colors.blueAccent
                        : Colors.black87),
              )),
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.dark);
              },
              child: Text(
                'dark',
                style: TextStyle(color: Colors.black87),
              )),
        ],
      ),
    );
  }
}
