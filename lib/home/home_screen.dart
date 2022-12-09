import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/quran/quran.dart';
import 'package:islami/radio/radio.dart';
import 'package:islami/seabha/seabha.dart';
import 'package:islami/theme_helper.dart';
class HomeScreen extends StatefulWidget {
  static String routeName='Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
 List<Widget> taps =[Quran(),Hadeth(),Seabha(),RadioTap()];
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/images/default_bg.png'),fit:BoxFit.cover )
       ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(title: (Text('ISLAMI',style: TextStyle(
          color: ThemeHelper.primiary
          ,fontSize: 30,
        fontWeight: FontWeight.bold,),)
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor:ThemeHelper.primiary),//change back ground
          child: BottomNavigationBar(
            selectedItemColor: ThemeHelper.assest,
           //showUnselectedLabels: true,
            //currentIndex: 2,
            currentIndex:  selectedIndex,
            onTap: ( clickIndex){
              selectedIndex=clickIndex;
              setState(() {

              });
               },

            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),label: 'quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),label: 'hadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),label: 'sebha'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),label: 'radio'),
            ],
          ),
        ),
         body: taps[selectedIndex],
      ),

    );
  }
}
