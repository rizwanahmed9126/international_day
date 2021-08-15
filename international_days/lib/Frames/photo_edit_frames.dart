import 'package:flutter/material.dart';


Widget frameModel({context,Function onClick,Widget child}){
  Size size=MediaQuery.of(context).size;
  return GestureDetector(
    onTap: onClick,

    child: Card(
      borderOnForeground: false,
     elevation: 5,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      ),
      //width: size.width*0.22,
        //height: size.height*0.13,
        //padding: EdgeInsets.all(5),
        //height: size.height*0.123,
      // decoration: BoxDecoration(
      //     color: Colors.white,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.3),
      //         spreadRadius: 2,
      //         blurRadius: 4,
      //           // color: Colors.grey.withOpacity(0.5),
      //           // spreadRadius: 1,
      //           // blurRadius: 3,
      //           //offset: Offset(0, 3)
      //       )
      //     ]
      // ),
      child: child

    ),
  );
}

Widget Frame1({double height,double width,TextStyle nameStyle,Widget toShowNumber}){
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        children: [

          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color:Colors.orange,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25)
                )
            ),
            child: Center(
              child: Text('Your Name',style: nameStyle),
            ),

          ),
          SizedBox(width: 10,),
          toShowNumber,
        ],
      ),
    ),
  );
}