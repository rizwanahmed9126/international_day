import 'package:flutter/material.dart';
import 'package:international_todays/Widgets/circle_button.dart';

class ExpandableFabButton extends StatefulWidget {
  final Function onClick1;
  final Function onClick2;
  final Function onClick3;
  final Function onClick4;
  final Animation degOneTranslationAnimation;
  var distance;
  Animation rotationValue;

  ExpandableFabButton({this.onClick1,this.onClick2,this.onClick3,this.onClick4,this.degOneTranslationAnimation,this.distance,this.rotationValue
  });
  @override
  _ExpandableFabButtonState createState() => _ExpandableFabButtonState();
}

class _ExpandableFabButtonState extends State<ExpandableFabButton> with SingleTickerProviderStateMixin{


  double getRadianFromDegree(double degree){
    double unitRadian=57.295779513;
    return degree/unitRadian;
  }




  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Stack(
      children: [

        Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(300),widget.distance
            ),
            child:
            Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue.value))..scale(widget.degOneTranslationAnimation.value),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffBDBDBD),
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(2, -3),
                      )
                    ]
                ),
                width: size.width*0.09,
                height: size.width*0.09,
                child: IconButton(
                    icon: RotatedBox(
                      quarterTurns: 6,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 17,)
                    ),
                    enableFeedback: true,
                    onPressed: widget.onClick2
                ),
              ),
            )

        ),
        Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(195),widget.distance
            ),

            child:
            Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue.value))..scale(widget.degOneTranslationAnimation.value),
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffBDBDBD),
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(2, 0.0),
                      )
                    ]
                ),
                width: size.width*0.09,
                height: size.width*0.09,
                child: IconButton(
                    icon: Center(child: Icon(Icons.add,size: 17,)),
                    enableFeedback: true,
                    onPressed: widget.onClick2
                ),
              ),
            )

        ),
        Transform.translate(
          offset: Offset.fromDirection(getRadianFromDegree(145), 60//widget.distance
          ),
          child:
          Transform(
            transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue.value))..scale(widget.degOneTranslationAnimation.value),
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffBDBDBD),
                      blurRadius: 2,
                      spreadRadius: 1,
                      offset: Offset(2, -3),
                    )
                  ]
              ),
              width: size.width*0.09,
              height: size.width*0.09,
              child: IconButton(
                  icon: Icon(Icons.keyboard,size: 17,),
                  enableFeedback: true,
                  onPressed: widget.onClick2
              ),
            ),
          )

        ),

        GestureDetector(
          onTap: widget.onClick1,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0xffBDBDBD),
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0, 3),
                )
              ]
            ),
            width: size.width*0.15,
            height: size.height*0.15,
            child: ImageIcon(
                AssetImage('assets/T.png'),
                //enableFeedback: true,
                //onPressed: widget.onClick1
            ),
          ),
        )





      ],
    );
  }
}
