import 'package:flutter/material.dart';
import 'package:international_todays/Screens/today.dart';

class HorizontalImagesList extends StatelessWidget {
  final Function today;
  final Function tomorrow;
  final Function national;
  final Function international;
  final Function birth;
  final controller;
  const HorizontalImagesList({Key key,this.controller,this.today,this.national,this.tomorrow,this.birth,this.international}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.15,
      width: MediaQuery.of(context).size.width * 0.9,
      child: ListView(
        controller: controller,
        scrollDirection: Axis.horizontal,

        children: [
          GestureDetector(
            onTap: today,

              child: sliderTile('assets/image_1.png','Today')
          ),
          GestureDetector(
            onTap: tomorrow,
              child: sliderTile('assets/image_2.png','Tomorrow')
          ),
          GestureDetector(
            onTap: national,
              child: sliderTile('assets/image_3.png','National\n Days')
          ),
          GestureDetector(
            onTap: international,
              child: sliderTile('assets/image_4.png','International\nDays')
          ),
          GestureDetector(
            onTap: birth,
              child: sliderTile('assets/image_5.png','Birth\nDays')
          ),
          sliderTile('assets/image_1.png','Today'),
          sliderTile('assets/image_2.png','Tomorrow'),
          sliderTile('assets/image_3.png','National\n Days'),

        ],
      ),
    );
  }
}


Widget sliderTile(String imagePath,String text){
  return Column(
    children: [
      Container(
          height: 60,
          child: Image.asset(imagePath)
      ),
      Text(text,style: TextStyle(fontSize: 11),)
    ],
  );
}
