import 'package:flutter/material.dart';
import 'package:islami/quran/sura_name_item.dart';
import 'package:islami/theme_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Quran extends StatelessWidget {
  static String routeName='quran tap';
  List<String>suraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(children: [
        Expanded(flex: 3,
            child
            : Image.asset('assets/images/qur2an_screen_logo.png')),
        Divider(color: Theme.of(context).dividerTheme.color,thickness: 3,)
          ,
        Text(AppLocalizations.of(context)!.suraName,style: Theme.of(context).textTheme.bodyMedium,
        ),
        Expanded(flex: 7,
          child:
        ListView.builder(
          itemCount: suraName.length,
            itemBuilder: (context,index)=>SuraName(suraName[index],index)
        ))


      ],),
    );
  }
}
