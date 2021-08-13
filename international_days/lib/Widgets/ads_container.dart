import 'package:flutter/material.dart';

class AdsContainer extends StatelessWidget {
  final String txt;
  const AdsContainer({Key key,this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0,right: 18.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffBDBDBD),
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(0, 3),
                  )
                ]
            ),
            child: Center(

              child: Text(txt,style: TextStyle(fontSize: 20,color: Color(0xff686868)),),
            ),
          ),

        ],
      ),
    );
  }
}
