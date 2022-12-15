import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeth/hadeth_Item.dart';
import 'package:islami/theme_helper.dart';
class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
 List< AhadthModle>hadethModels=[];

  @override
  Widget build(BuildContext context) {
    if (hadethModels.isEmpty){
      readAhadthFile();
    }

    return  Container(

      child: Column(children: [
        Expanded(flex:3,
            child: Image.asset('assets/images/hadeth_logo.png')),
        Text(AppLocalizations.of(context)!.ahadeth,style: Theme.of(context).textTheme.bodyMedium,
        ),

        Divider(color: Theme.of(context).dividerTheme.color,
          thickness: 3,),

        Expanded(flex: 8,
          child: ListView.builder(itemCount: hadethModels.length,
            itemBuilder: (context,index)
            =>HadethItem(hadethModels[index])
      ),
        ),
      ],)

    );
  }

  readAhadthFile() async{
    String fileContent=await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String>ahadeth=fileContent.split('#\r\n');
    for (int i=0;i<ahadeth.length;i++){
      List<String>singleHadethLine=ahadeth[i].split('\n');
      String title=singleHadethLine[0];
      singleHadethLine.removeAt(0);
      String content=singleHadethLine.join();
      hadethModels.add(AhadthModle(title, content));
     // print(ahadeth);
    }

        setState(() {

        });

  }
}
class AhadthModle{
  String title;
  String content;

AhadthModle(this.title,this.content);
}