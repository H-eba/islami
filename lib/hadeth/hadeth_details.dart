import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:provider/provider.dart';
import '../theme_helper.dart';
import 'hadeth.dart';
class HadethDetails extends StatefulWidget {
  static String routeName='Hadeth details';

  @override
  State<HadethDetails> createState() => _HadethDetails();
}

class _HadethDetails extends State<HadethDetails> {



  @override
  Widget build(BuildContext context) {
 var args=ModalRoute.of(context)!.settings.arguments as AhadthModle;
 SettingProvider provider = Provider.of(context);
    return
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(provider.currentThem==ThemeMode.light?
                  'assets/images/default_bg.png': 'assets/images/dark_bg.png'
                  ),
                  fit: BoxFit.cover)),

          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(title: (Text('${args.title}',style:Theme.of(context).textTheme.titleMedium,)
              ),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0,),
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(args.content,textAlign:TextAlign.right,style: Theme.of(context).textTheme.titleMedium),
            ),


          )
      );
  }


}