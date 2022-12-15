import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/hadeth/hadeth_details.dart';

import '../theme_helper.dart';
class HadethItem extends StatelessWidget {
  AhadthModle hadth;
  HadethItem(this.hadth);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context,HadethDetails.routeName,
            arguments:hadth  );
      },
      child: Text(
        hadth.title,textAlign:TextAlign.center
        ,style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}