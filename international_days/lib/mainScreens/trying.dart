import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int count = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//               Draggable(
//                 child: buildBox("+1", Colors.red[200]),
//                 feedback: buildBox("+1", Colors.red[200]),
//                 childWhenDragging: buildBox("+1", Colors.grey[300]),
//                 data: 1,
//                 onDragStarted: (){
//                   print("onDragStarted");
//                 },
//                 onDragCompleted: (){
//                   print("onDragCompleted");
//                 },
//                 onDragEnd: (details){
//                   print("onDragEnd Accept = "+details.wasAccepted.toString());
//                   print("onDragEnd Velocity = "+details.velocity.pixelsPerSecond.distance.toString());
//                   print("onDragEnd Offeset= "+details.offset.direction.toString());
//                 },
//                 onDraggableCanceled: (Velocity velocity, Offset offset){
//                   print("onDraggableCanceled "+velocity.toString());
//                 },
//               ),
//               Draggable(
//                 child: buildBox("-1", Colors.blue[200]),
//                 feedback: buildBox("-1", Colors.blue[200]),
//                 childWhenDragging: buildBox("-1", Colors.blue[300]),
//                 data: -1,
//               )
//             ]),
//             DragTarget(
//               builder: (BuildContext context, List<int> candidateData,
//                   List<dynamic> rejectedData) {
//                 print("candidateData = " +
//                     candidateData.toString() +
//                     " , rejectedData = " +
//                     rejectedData.toString());
//                 return buildBox("$count", Colors.green[200]);
//               },
//               onWillAccept: (data) {
//                 print("onWillAccept");
//                 return data == 1 || data == -1; // accept when data = 1 only.
//               },
//               onAccept: (data) {
//                 print("onAccept");
//                 count += data;
//               },
//               onLeave: (data) {
//                 print("onLeave");
//               },
//             )
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
//
//   Container buildBox(String title, Color color) {
//     return Container(
//         width: 100,
//         height: 100,
//         color: color,
//         child: Center(
//             child: Text(title,
//                 style: TextStyle(fontSize: 18, color: Colors.black))));
//   }
// }


class PanableWidget extends StatefulWidget {
  final File logo;
  final String selectBannerImage;

  const PanableWidget({Key key,this.selectBannerImage,this.logo}) : super(key: key);

  @override
  _PanableWidgetState createState() => _PanableWidgetState();
}

class _PanableWidgetState extends State<PanableWidget> {


  double containerHeight=100;
  double containerWidth=100;

  //double containerHeightBox = 400;
  //double containerWidthBox =350;


  double xPosition = 0;
  double yPosition = 0;





  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;


    return Container(

            height: MediaQuery.of(context).size.height*0.54,
            width: MediaQuery.of(context).size.width*0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage(widget.selectBannerImage),
              fit: BoxFit.fill,
              ),
            ),

           // color: Colors.red,
            child:widget.logo != null? Stack(
              children: [

                Positioned(
                  top: yPosition,
                  left: xPosition,
                  child: GestureDetector(
                    onPanUpdate: (tapInfo) {
                      setState(() {
                        xPosition = _isXCoordinateMoreThanScreenWidth(tapInfo, screenWidth)
                            ? screenWidth - containerWidth // stick to right edge of the screen
                            : _isXCoordinateLessThanZero(tapInfo)
                            ? 0 // stick to left edge of the screen
                            : xPosition + tapInfo.delta.dx;
                        yPosition = _isYCoordinateMoreThanScreenHeight(tapInfo, screenHeight)
                            ? screenHeight - containerHeight // stick to bottom edge of the screen
                            : _isYCoordinateLessThanZero(tapInfo)
                            ? 0 // stick to top edge of the screen
                            : yPosition + tapInfo.delta.dy;
                      });
                    },
                    child: Container(
                        width: containerWidth,
                        height: containerHeight,
                        //color: Colors.orange,
                        child: Image.file(widget.logo,fit: BoxFit.fill,)
                    ),
                  ),
                ),
              ],
            ):Text('No Image Selected'),
          );


  }

  bool _isXCoordinateMoreThanScreenWidth(DragUpdateDetails tapInfo, double screenWidth) {
    return xPosition + containerWidth + tapInfo.delta.dx > screenWidth;
  }

  bool _isXCoordinateLessThanZero(DragUpdateDetails tapInfo) => xPosition + tapInfo.delta.dx <= 0;

  bool _isYCoordinateMoreThanScreenHeight(DragUpdateDetails tapInfo, double screenHeight) {
    return yPosition + containerHeight + tapInfo.delta.dy > screenHeight;
  }

  bool _isYCoordinateLessThanZero(DragUpdateDetails tapInfo) => yPosition + tapInfo.delta.dy <= 0;
}