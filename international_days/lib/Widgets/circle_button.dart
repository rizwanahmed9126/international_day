import 'package:flutter/material.dart';


class CircularButton extends StatelessWidget {

   final double width;
  final double height;
  final Color color;
  final Icon icon;
  final Function onPressed;

  CircularButton({

     this.width,
     this.height,
     this.icon,
     this.color,
     this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      width: width,
      height: height,
      child: IconButton(icon: icon, enableFeedback: true, onPressed: onPressed),
    );
  }
}

// class CircleButton extends StatelessWidget {
//   final double height;
//   final double width;
//   final Color color;
//   final Icon icon;
//   final Function onClick;
//   CircleButton({
//      this.height=0,
//    this.width=0,
//      this.color=0,
//      this.icon,
//      this.onClick
//   });
//
//   //CircleButton(this.height,this.width,this.color,this.icon,this.onClick);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height:height,
//       width:width,
//       child: IconButton(icon: icon,color: color,onPressed: onClick(),enableFeedback: true,),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//
//       ),
//     );
//   }
// }

