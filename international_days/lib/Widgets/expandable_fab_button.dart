import 'package:flutter/material.dart';
import 'package:international_todays/Widgets/circle_button.dart';

class ExpandableFabButton extends StatefulWidget {
  final Function onClick1;
  final Function onClick2;
  final Function onClick3;
  final Function onClick4;
  final Animation degOneTranslationAnimation;
  var distance;
  var rotationValue;

  ExpandableFabButton({this.onClick1,this.onClick2,this.onClick3,this.onClick4,this.degOneTranslationAnimation,this.distance,this.rotationValue
  });
  @override
  _ExpandableFabButtonState createState() => _ExpandableFabButtonState();
}

class _ExpandableFabButtonState extends State<ExpandableFabButton> with SingleTickerProviderStateMixin{

  // AnimationController animationController;
  // Animation degOneTranslationAnimation;


  
  


  double getRadianFromDegree(double degree){
    double unitRadian=57.295779513;
    return degree/unitRadian;
  }
  



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(270),widget.distance),
            child:
            Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue)),
              child: Container(
                decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                width: 60,
                height: 60,
                child: IconButton(icon: Icon(Icons.menu),
                    enableFeedback: true, onPressed: widget.onClick2),
              ),
            )
          // CircularButton(
          //     height: 50,
          //     width: 50,
          //     icon: Icon(Icons.menu),
          //     color: Colors.blue,
          //     onPressed: widget.onClick4
          // ),
        ),
        Transform.translate(
            offset: Offset.fromDirection(getRadianFromDegree(225),widget.distance),
            child:
            Transform(
              transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue)),
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
                width: 60,
                height: 60,
                child: IconButton(icon: Icon(Icons.menu),
                    enableFeedback: true, onPressed: widget.onClick2),
              ),
            )
          // CircularButton(
          //     height: 50,
          //     width: 50,
          //     icon: Icon(Icons.menu),
          //     color: Colors.yellow,
          //     onPressed: widget.onClick3
          // ),
        ),
        Transform.translate(
          offset: Offset.fromDirection(getRadianFromDegree(180),widget.distance),
          child:
          Transform(
            transform: Matrix4.rotationZ(getRadianFromDegree(widget.rotationValue)),
            child: Container(
              decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
              width: 60,
              height: 60,
              child: IconButton(icon: Icon(Icons.menu),
                  enableFeedback: true, onPressed: widget.onClick2),
            ),
          )
          // CircularButton(
          //     height: 50,
          //     width: 50,
          //     icon: Icon(Icons.menu),
          //     color: Colors.green,
          //     onPressed: widget.onClick2
          // ),
        ),

        // CircularButton(
        //     height: 60,
        //     width: 60,
        //     icon: Icon(Icons.menu),
        //     color: Colors.red,
        //     onPressed: widget.onClick1
        // ),
        Container(
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          width: 60,
          height: 60,
          child: IconButton(icon: Icon(Icons.menu), enableFeedback: true,
              onPressed: widget.onClick1),
        )





      ],
    );
  }
}
