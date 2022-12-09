import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/theme_helper.dart';
class Hadeth extends StatefulWidget {
  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
 List< AhadthModle>hadethModels=[];

  @override
  Widget build(BuildContext context) {
    return  Container(

    );
  }

  readFile(String suraFile ) async{
    String fileContent=await rootBundle.loadString('assets/files/hadeth.txt');
    List<String>ahadeth=fileContent.split('#\n\r');
    for (int i=0;i<ahadeth.length;i++){
      List<String>singleHadethLine=ahadeth[i].split('\n');
      String title=singleHadethLine[0];
      singleHadethLine.removeAt(0);
      String content=singleHadethLine.join();
      hadethModels.add(AhadthModle(title, content));
    }

        setState(() {

        });
    //print(content);
  }
}
class AhadthModle{
  String title;
  String content;

AhadthModle(this.title,this.content);
}