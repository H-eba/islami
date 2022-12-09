import 'package:flutter/material.dart';
import 'package:islami/sura_details/sura_details.dart';
import 'package:islami/sura_details/sura_details_arrguments.dart';
import 'package:islami/theme_helper.dart';
class SuraName extends StatelessWidget {
String text;
int index;
SuraName(this.text,this.index);
  @override
  Widget build(BuildContext context) {

    return InkWell(
     onTap: (){
       Navigator.pushNamed(context, SuraDetails.routeName,
           arguments: SuraDetailsArrguments(suraName: text,suraFile:'${index+1}.txt' ) );
     },
      child: Text(
        '$text',textAlign:TextAlign.center
        ,style: TextStyle(fontSize: 25
      ,fontWeight: FontWeight.bold,color: ThemeHelper.assest),),
    );
  }
}

