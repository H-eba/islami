
import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/theme_helper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class Seabha extends StatefulWidget {
  @override
  State<Seabha> createState() => _SeabhaState();
}

class _SeabhaState extends State<Seabha> {
  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'استغفر الله'];
  int counter = 0;
  int index = 0;
  double angle = 0;


  String text = 'سبحان الله';

  void tasbehFun() {
    if (counter == 5) {
      counter = 0;
      if (index == tasbeh.length - 1) {
        index = 0;
      } else {
        index++;
      }
    } else {
      counter++;
    }

    setState(() {});
    angle += 270;
  }

  @override
  Widget build(BuildContext context) {
  SettingProvider provider=Provider.of(context);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .42,
            child: Stack(
              children: [
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.45,
                  child: provider.currentThem==ThemeMode.light?
                       Image.asset('assets/images/head_sebha_logo.png')
                      : Image.asset('assets/images/head_sebha_dark.png'),
                ),
                Positioned(
                    top: 70,
                    left: MediaQuery.of(context).size.width * .22,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                       provider.currentThem==ThemeMode.light
                            ? 'assets/images/body_sebha_logo.png'
                            : 'assets/images/body_sebha_dark.png',
                        width: 200,
                        height: 200,
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height:7,
          ),
          Text(
            AppLocalizations.of(context)!.tasbehatNumbers,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: provider.currentThem == ThemeMode.light
                      ? ThemeHelper.primiary
                      : ThemeHelper.primiarydark),
              onPressed: () {},
              child: Text(
                '$counter',
                style: TextStyle(
                    color: provider.currentThem == ThemeMode.light
                        ? ThemeHelper.accent
                        : ThemeHelper.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor:provider.currentThem == ThemeMode.light
                      ? ThemeHelper.primiary
                      : ThemeHelper.accentdark),
              onPressed: () {
                tasbehFun();
              },
              child: Text(
                '${tasbeh[index]}',
                style: TextStyle(
                    color: provider.currentThem == ThemeMode.light
                        ? ThemeHelper.white
                        : ThemeHelper.accent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}