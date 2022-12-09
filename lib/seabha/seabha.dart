import 'package:flutter/material.dart';
import 'package:islami/theme_helper.dart';

class Seabha extends StatefulWidget {
  @override
  State<Seabha> createState() => _SeabhaState();
}

class _SeabhaState extends State<Seabha> {
  List<String> tasbeh = ['سبحان الله', 'الحمد لله', 'استغفر الله'];
  int counter = 0;
  int index = 0;
  double angle = 0;
  //int angle=0;

  String text = 'سبحان الله';
  //for(;true;){};
  void tasbehFun() {
    if (counter == 33) {
      counter = 0;
      if (index == tasbeh.length - 1) {
        index = 0;
      } else {
        index++;
      }
    } else {
      counter++;
    }

    setState(() {});
    angle += 270;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/default_bg.png'),
                fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(
            child: Container(padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                children: [
                  Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        'assets/images/Group8.png',
                        width: 250,
                        height: 200,
                      )),

                  //SizedBox(
                   // height: 0,
                 // ),
                  //Image.asset('assets/images/body_sebha_logo.png'),
                  Text(
                    'عدد التسبحات',
                    
                    style: TextStyle(
                        color: ThemeHelper.primiary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Color(0xffB7935F)),
                      onPressed: () {},
                      child: Text(
                        '$counter',
                        style: TextStyle(color: Color(0xff242424)),
                      )),
                SizedBox(height: 15,),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Color(0xffB7935F)),
                      onPressed: () {
                        tasbehFun();
                      },
                      child: Text(
                        '${tasbeh[index]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ),
        ));
  }
}
