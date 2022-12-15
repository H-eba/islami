import 'package:flutter/material.dart';
import 'package:islami/theme_helper.dart';

class RadioTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10),
              child: Image.asset('assets/images/radio_image.png')),
          SizedBox(
            height: 5,
          ),
          Text(
            ' '
                'اذعة القرآن الكريم',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:

          [
            Icon(Icons.skip_next,color: Theme.of(context).iconTheme.color),
            Icon(Icons.play_arrow_rounded,size: 50,color: Theme.of(context).iconTheme.color),
            Icon(Icons.skip_previous_rounded,size:50,color: Theme.of(context).iconTheme.color),
          ],)
        ],
      ),
    );
  }
}
