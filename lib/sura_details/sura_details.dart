import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/sura_details/sura_details_arrguments.dart';
import 'package:islami/theme_helper.dart';
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

    return
      Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage
        ('assets/images/default_bg.png'),
    fit:BoxFit.cover )
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(title: (Text('${args.suraName}',style: TextStyle(
    color: ThemeHelper.primiary
    ,fontSize: 30,
    fontWeight: FontWeight.bold,),)
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,),
    body: ListView.builder(
         itemCount: suraLines.length,
        itemBuilder: (context,index){ ///
      return Text(
        '${suraLines[index]}{${index+1}}',
        textAlign:TextAlign.center,
        //textDirection:TextDecoration.rtl    ,
        style: TextStyle(fontSize: 25 ,color: ThemeHelper.assest),);
    }
    )
    //Text(SuraDetailsArrguments.suraFiles),
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
