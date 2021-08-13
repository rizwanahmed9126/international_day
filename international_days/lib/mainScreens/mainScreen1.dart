import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';








class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final controller = ScrollController();
  String bannerImage='assets/demo.jpg';

  double top = 0;
  double left = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _holiAppBar(context),
      body:
      Stack(
        children: <Widget>[
          Container(
            //color: Colors.blue,
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0, top:30.0),
            child:
            Stack(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,

                  child: Image.asset(bannerImage,fit: BoxFit.fill,),
                ),
                Positioned(
                  //top: 0,

                  child: Draggable(
                    child: Container(
                      padding: EdgeInsets.only(top: top, left: left),
                      child: DragItem(),
                    ),
                    feedback: Container(
                      padding: EdgeInsets.only(top: top, left: left),
                      child: DragItem(),
                    ),
                    childWhenDragging: Container(
                      // padding: EdgeInsets.only(top: top, left: left),
                      // child: DragItem(),
                    ),
                    onDragCompleted: () {},
                    onDragEnd: (drag) {
                      setState(() {
                        if((top + drag.offset.dy) > (300.0 - 30.0)){
                          top = (300.0 - 30.0);
                        }else if((top + drag.offset.dy-30.0) < 0.0){
                          top = 0;
                        }else{
                          top =  top + drag.offset.dy-30.0;
                        }
                        if((left + drag.offset.dx) > (300.0 - 30.0)){
                          left = (300.0 - 30.0);
                        }else if((left + drag.offset.dx-30.0) < 0.0){
                          left = 0;
                        }else{
                          left =  left + drag.offset.dx-30.0;
                        }
                      });
                    },
                  ),
                )
              ],
            ),
          ),


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

class DragItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      IconData(57744, fontFamily: 'MaterialIcons'),
      size: 30,
    );
  }
}