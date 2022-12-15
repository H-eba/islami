import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/sura_details/sura_details_arrguments.dart';
import 'package:islami/theme_helper.dart';
import 'package:provider/provider.dart';
class SuraDetails extends StatefulWidget {
 static String routeName='sura details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
 //String content='';
  List<String>suraLines=[];

  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context)!.settings.arguments as SuraDetailsArrguments;
    if (suraLines.isEmpty){
      readFile(args.suraFile);

    }
    SettingProvider provider=Provider.of(context);
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
    appBar: AppBar(title: (Text('${args.suraName}',style: Theme.of(context).textTheme.titleMedium)
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,),
    body: ListView.builder(
         itemCount: suraLines.length,
        itemBuilder: (context,index){ ///
      return Padding(
        padding: const EdgeInsets.all(15),
        child: Text(
          '${suraLines[index]}{${index+1}}',
          textAlign:TextAlign.start,
          //textDirection:TextDecoration.rtl,
          style: Theme.of(context).textTheme.titleMedium,),
      );
    }
    )
    )
      );
  }

  readFile(String suraFile ) async{
    String fileContent=await rootBundle.loadString('assets/files/$suraFile');
    suraLines=fileContent.split('\n');
    suraLines=suraLines.where((line) => line.trim().isNotEmpty).toList();//to remove lines &spaces
    setState(() {

    });
    //print(content);
    print(suraLines);

  }
}
