import 'package:flutter/material.dart';

class DaysPanel extends StatelessWidget {
  final String todayTxt;
  const DaysPanel({Key key,this.todayTxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height*0.65,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Color(0xffBDBDBD),
                blurRadius: 6,
                spreadRadius: 1,
                //offset: Offset(0, 3),
              )
            ]
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.arrow_back_ios,size: 17,),
                  Text(todayTxt,style: TextStyle(fontSize: 17),),
                  Icon(Icons.arrow_forward_ios,size: 17,color: Colors.black,)
                ],
              ),


            ),

            customListTile('assets/january_1.png','National Bloody Mary Day','January-01','Food'),

            customListTile('assets/january_2.png','National Hangover Day','January-01','Food'),

            customListTile('assets/january_3.png','New Year Day','January-01','Food'),

            customListTile('assets/january_4.png','National Buffet Day','January-01','Food'),
          ])



      ),
    );
  }
}


Widget customListTile(String imgPath,String txt1,String txt2,String txt3){
  return Row(
    children: [
      Container(
        child: Image.asset(imgPath),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(txt1,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            Text(txt2,style: TextStyle(fontSize: 13,color: Colors.black),),
            Text(txt3,style: TextStyle(fontSize: 13,color: Colors.black),),
          ],
        ),
      )
    ],

  );


}