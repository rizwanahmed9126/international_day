// import 'package:flutter/material.dart';
//
//
// class BannerSize extends StatefulWidget {
//   @override
//   _BannerSizeState createState() => _BannerSizeState();
// }
//
// class _BannerSizeState extends State<BannerSize> {
//   Offset position = Offset(50, 50);
//   double prevScale = 1;
//   double scale = 1;
//
//   void updateScale(double zoom) => setState(() => scale = prevScale * zoom);
//   void commitScale() => setState(() => prevScale = scale);
//   void updatePosition(Offset newPosition) =>
//       setState(() => position = newPosition);
//
//
//   Offset offset = Offset.zero;
//   final double height = 200;
//   final double width = 200;
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Stack(
//         children: [
//           Positioned(
//               child:
//               Container(
//                   margin: EdgeInsets.only(top: 58,left: 18),
//                   height: 300,
//                   width: 300,
//                   color: Colors.amber.withOpacity(.4)
//               )
//           ),
//           GestureDetector(
//             onScaleUpdate: (details) => updateScale(details.scale),
//             onScaleEnd: (_) => commitScale(),
//             child: Positioned(
//               left: position.dx,
//               top: position.dy,
//               child: Draggable(
//                 maxSimultaneousDrags: 1,
//                 feedback:icon(),
//                 childWhenDragging: Opacity(
//                   opacity: .3,
//                   child: icon(),
//                 ),
//                 onDragEnd: (details) => updatePosition(details.offset),
//                 child: Transform.scale(
//                   scale: scale,
//                   child: icon(),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       );
//   }
// }
//
// Widget icon(){
//   return ImageIcon(
//     AssetImage('assets/logo.png'),
//     size: 70,
//     //color: Colors.white,
//   );
// }

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:international_todays/mainScreens/banner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


// class DragArea1 extends StatefulWidget {
//   final Widget frames;
//   final Widget child;
//   final String selectBannerImage;
//
//   const DragArea1({Key key, this.child,this.selectBannerImage,this.frames}) : super(key: key);
//   @override
//   _DragArea1State createState() => _DragArea1State();
// }
// class _DragArea1State extends State<DragArea1> {
//   double top = 0;
//   double left = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Draggable(
//           child: Container(
//             padding: EdgeInsets.only(top: top-104, left: left-20),
//             child: widget.child,
//           ),
//           feedback: Container(
//             padding: EdgeInsets.only(top: top-104, left: left-20),
//             child: widget.child,
//           ),
//           childWhenDragging: Container(
//             // padding: EdgeInsets.only(top: top, left: left),
//             // child: widget.child,
//           ),
//           onDragCompleted: () {},
//           onDragEnd: (drag) {
//             setState(() {
//               if((top + drag.offset.dy) > (300.0 - 30.0)){
//                 top = (300.0 - 30.0);
//               }else if((top + drag.offset.dy-30.0) < 0.0){
//                 top = 0;
//               }else{
//                 top =  top + drag.offset.dy-30.0;
//               }
//               if((left + drag.offset.dx) > (300.0 - 30.0)){
//                 left = (300.0 - 30.0);
//               }else if((left + drag.offset.dx-30.0) < 0.0){
//                 left = 0;
//               }else{
//                 left =  left + drag.offset.dx-30.0;
//               }
//             });
//           },
//         ),
//       ),
//     );
//   }
// }


// class StatefulDragArea extends StatefulWidget {
//   final Widget frames;
//   final Widget child;
//   final String selectBannerImage;
//
//   const StatefulDragArea({Key key, this.child,this.selectBannerImage,this.frames}) : super(key: key);
//
//   @override
//   _DragAreaStateStateful createState() => _DragAreaStateStateful();
// }
//
// class _DragAreaStateStateful extends State<StatefulDragArea> {
//   Offset position = Offset(100, 100);
//   double prevScale = 1;
//   double scale = 1;
//
//   double top = 0;
//   double left = 0;
//
//   void updateScale(double zoom) => setState(() => scale = prevScale * zoom);
//   void commitScale() => setState(() => prevScale = scale);
//   void updatePosition(Offset newPosition) =>
//       setState(() => position = newPosition);
//
//   @override
//   Widget build(BuildContext context) {
//     Size size=MediaQuery.of(context).size;
//     return GestureDetector(
//       onScaleUpdate: (details) => updateScale(details.scale),
//       onScaleEnd: (_) => commitScale(),
//       child: Stack(
//         children: [
//           Positioned.fill(
//
//
//               child: Container(
//                 //height: 430,
//                 //width: MediaQuery.of(context).size.width*0.5,
//                 //margin: EdgeInsets.only(left: 10,right: 10),
//                 color:Colors.white, //Colors.amber.withOpacity(.4),
//                 child: Image.asset(widget.selectBannerImage,fit: BoxFit.fill,),
//               )
//           ),
//
//           widget.frames,
//           Positioned(
//             left: left,
//             top: top,
//             child: Draggable(
//               maxSimultaneousDrags: 1,
//               feedback: widget.child,
//               childWhenDragging: Opacity(
//                 opacity: .3,
//                 child: widget.child,
//               ),
//               onDragEnd: (drag) {
//                 setState(() {
//                   if((drag.offset.dy) > (300.0 - 104.0)){
//                     top = (300.0 - 104.0);
//                     print('top if-$top');
//                   }else if((top + drag.offset.dy-104.0) < 0.0){
//                     top = 0;
//                     print('top else if-$top');
//                   }else{
//                     top =  drag.offset.dy-104.0;
//                     print('top else-$top');
//                   }
//                   if((left + drag.offset.dx) > (300.0 - 104.0)){
//                     left = (300.0 - 104.0);
//                     print('left if-$top');
//                   }else if((left + drag.offset.dx-104.0) < 0.0){
//                     left = 0;
//                     print('left else if-$top');
//                   }else{
//                     left =  drag.offset.dx-20.0;
//                     print('left else-$top');
//                   }
//                 });
//                 }, //updatePosition(details.offset),
//               child: Transform.scale(
//                 scale: scale,
//                 child: widget.child,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





class DragArea extends HookWidget {
  final Widget frames;
  final Widget child;
  final String selectBannerImage;

  const DragArea({Key key, this.child,this.selectBannerImage,this.frames}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final position = useState(Offset(100, 100));
    final prevScale = useState(1.0);
    final scale = useState(1.0);

    double top = 0;
    double left = 0;
    return GestureDetector(
      onScaleUpdate: (details) => scale.value = prevScale.value * details.scale,
      onScaleEnd: (_) => prevScale.value = scale.value,

      child: Stack(
        children: [


          Positioned.fill(


              child: Container(
                //height: 430,
                //width: MediaQuery.of(context).size.width*0.5,
                //margin: EdgeInsets.only(left: 10,right: 10),
                color:Colors.white, //Colors.amber.withOpacity(.4),
                child: Image.asset(selectBannerImage,fit: BoxFit.fill,),
              )
          ),

          frames,


          Positioned(
            left: position.value.dx-MediaQuery.of(context).size.width*0.051,
            top: position.value.dy-MediaQuery.of(context).size.width*0.37,
            child:


            Draggable(
              maxSimultaneousDrags: 1,
              feedback: Transform.scale(
                scale: scale.value,
                child: child,
              ),
              childWhenDragging: Container(),
              // Opacity(
              //   opacity: .3,
              //   child: Transform.scale(
              //     scale: scale.value,
              //     child: child,
              //   ),
              // ),
              onDragEnd: (details){

                print('1 ${MediaQuery.of(context).size.width*0.055}');
                print('2 ${MediaQuery.of(context).size.width*1}');
                print('3 ${MediaQuery.of(context).size.width}');
                print('4 ${MediaQuery.of(context).size.height*0.137}');

                if((details.offset.dy)>(MediaQuery.of(context).size.height*0.6))
                {
                  position.value=Offset(details.offset.dx,MediaQuery.of(context).size.height*0.58);

                }
                else if((details.offset.dy)<0)
                {
                  position.value=Offset(details.offset.dx,MediaQuery.of(context).size.height*0.1);
                }
                else{
                  position.value = details.offset;
                }


              },
              child: Transform.scale(
                scale: scale.value,
                child: child,
              ),
            ),
          )
        ],
      ),
    );
  }
}