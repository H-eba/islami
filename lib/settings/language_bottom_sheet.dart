import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:provider/provider.dart';
class LanguageButtomSheet extends StatelessWidget {
  //const LanguageButtomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingProvider provider=Provider.of(context);
    return
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
        InkWell(onTap: (){
         provider.changeCurrentLocal("en");
        },
            child: Text('English',style: TextStyle(color:Colors.black87),)),

          InkWell(onTap: (){
            provider.changeCurrentLocal("ar");
          },
              child: Text('العربية',style: TextStyle(color:Colors.black87),)),

        ],),
      );
  }
}
