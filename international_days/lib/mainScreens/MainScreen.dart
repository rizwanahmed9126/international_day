import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// class StatefulDragArea extends StatefulWidget {
//   //final Widget child;
//
//   const StatefulDragArea({Key key,}) : super(key: key);
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
//   void updateScale(double zoom) => setState(() => scale = prevScale * zoom);
//   void commitScale() => setState(() => prevScale = scale);
//   void updatePosition(Offset newPosition) =>
//       setState(() => position = newPosition);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onScaleUpdate: (details) => updateScale(details.scale),
//       onScaleEnd: (_) => commitScale(),
//       child: Stack(
//         children: [
//           Positioned.fill(
//               child: Container(color: Colors.amber.withOpacity(.4))),
//           Positioned(
//             left: position.dx,
//             top: position.dy,
//             child: Draggable(
//               maxSimultaneousDrags: 1,
//               feedback:icon(),
//               childWhenDragging: Opacity(
//                 opacity: .3,
//                 child: icon(),
//               ),
//               onDragEnd: (details) => updatePosition(details.offset),
//               child: Transform.scale(
//                 scale: scale,
//                 child: icon(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

Widget icon(){
  return ImageIcon(
    AssetImage('assets/logo.png'),
    size: 70,
    //color: Colors.white,
  );
}


class Drag extends StatefulWidget {
  Drag({Key key}) : super(key: key);
  @override
  _DragState createState() => _DragState();
}
class _DragState extends State<Drag> {
  double top = 0;
  double left = 0;
  //final dragController = DragController();

  final controller = ScrollController();
  String bannerImage='assets/demo.jpg';


  Offset position = Offset(100, 100);
  double prevScale = 1;
  double scale = 1;

  void updateScale(double zoom) => setState(() => scale = prevScale * zoom);
  void commitScale() => setState(() => prevScale = scale);
  void updatePosition(Offset newPosition) => setState(() => position = newPosition);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _holiAppBar(context),
      body: Stack(
        children: [
          Container(
            //color: Colors.blue,
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,),
          ),

          Container(
            height: 370,
            width: 300,

            color: Colors.red,
            child:   GestureDetector(
                  onScaleUpdate: (details) => updateScale(details.scale),
                  onScaleEnd: (_) => commitScale(),
                  child: Stack(
                    children: [
                      // Positioned.fill(
                      //     child: Container(color: Colors.amber.withOpacity(.4))
                      // ),
                      Positioned(
                        left: position.dx,
                        top: position.dy,
                        child: Draggable(
                          maxSimultaneousDrags: 1,
                          feedback:icon(),
                          childWhenDragging: Opacity(
                            opacity: .3,
                            child: icon(),
                          ),
                          onDragEnd: (details) => updatePosition(details.offset),
                          child: Transform.scale(
                            scale: scale,
                            child: icon(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),

        // Positioned(
        //   top: 15,
        //   left: 45,
        //   child: Container(
        //     height: 370,
        //     width: 300,
        //     color: Colors.red,
        //     //child:
        //     // GestureDetector(
        //     //   onScaleUpdate: (details) => updateScale(details.scale),
        //     //   onScaleEnd: (_) => commitScale(),
        //     //   child: Stack(
        //     //     children: [
        //     //       // Positioned.fill(
        //     //       //     child: Container(color: Colors.amber.withOpacity(.4))
        //     //       // ),
        //     //       Positioned(
        //     //         left: position.dx,
        //     //         top: position.dy,
        //     //         child: Draggable(
        //     //           maxSimultaneousDrags: 1,
        //     //           feedback:icon(),
        //     //           childWhenDragging: Opacity(
        //     //             opacity: .3,
        //     //             child: icon(),
        //     //           ),
        //     //           onDragEnd: (details) => updatePosition(details.offset),
        //     //           child: Transform.scale(
        //     //             scale: scale,
        //     //             child: icon(),
        //     //           ),
        //     //         ),
        //     //       ),
        //     //     ],
        //     //   ),
        //     // ),
        //   ),
        // ),

          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Container(
                    height: 70,
                    child: ListView(
                      controller: controller,
                      scrollDirection: Axis.horizontal,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/holi-parties.jpg';
                            });
                          },

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                color: Colors.yellow
                              //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_4.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                color: Colors.grey
                              //child: Image.asset('assets/today_news_img_4.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_3.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                color: Colors.blue
                              //child: Image.asset('assets/today_news_img_3.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_2.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                color: Colors.green
                              //child: Image.asset('assets/today_news_img_2.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_1.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 70,
                              width: 70,
                              color: Colors.red,
                              //child: Image.asset('assets/today_news_img_1.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: ListView(
                      controller: controller,
                      scrollDirection: Axis.horizontal,

                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/holi-parties.jpg';
                            });
                          },

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_4.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/today_news_img_4.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_3.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/today_news_img_3.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_2.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/today_news_img_2.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              bannerImage='assets/today_news_img_1.png';
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset('assets/today_news_img_1.png',fit: BoxFit.fill,)
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
class DragItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('assets/logo.png'),
      size: 70,
      color: Colors.white,
    );
  }
}








Widget _holiAppBar(context){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Center(
      child: Container(
        height: 40,
        child: Image.asset('assets/Today.png'),
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black), // set your color here
      onPressed: () {

        Navigator.pop(context);
      },
    ),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.share_outlined,
            color: Colors.black,
          ),
          onPressed: ()async{


          }
      ),
      IconButton(
          icon: ImageIcon(
            AssetImage('assets/Vector.png'),
            color: Colors.black,
          ),
          onPressed: ()async{


          }
      )
    ],

  );
}



