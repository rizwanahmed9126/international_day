import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  final  String firstTxt;
  final String secondTxt;
  final TextStyle firstTxtStyle;
  final TextStyle secondTxtStyle;

  const RowText({Key key,this.firstTxt,this.secondTxt,this.firstTxtStyle,this.secondTxtStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8,left: 12,right: 12,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(firstTxt,style: firstTxtStyle,),
          ),
          Container(
            child: Text(secondTxt,style: secondTxtStyle),
          ),

        ],
      ),
    );
  }
}
