import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:international_todays/mainScreens/banner.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:international_todays/Frames/photo_edit_frames.dart';











class MainScreen extends StatefulWidget {
  final String image;
  const MainScreen({Key key,this.image}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final controller = ScrollController();
  String bannerImage;

  Widget frames=Frame1(
    height: 20,
    width: 150,
    nameStyle: TextStyle(fontSize:12,color: Colors.white),
    toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
  );

  @override
  void initState() {
    bannerImage=widget.image;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: _holiAppBar(context),
      body: SingleChildScrollView(
        child: Stack(
          //fit: StackFit.passthrough,
          children: <Widget>[
            // Container(
            //   height: size.height,
            //   width: MediaQuery.of(context).size.width,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage('assets/holi-parties.jpg'),
            //       fit: BoxFit.fill,
            //       colorFilter:
            //       ColorFilter.mode(Colors.white.withOpacity(0.2),
            //           BlendMode.dstATop),
            //     ),
            //
            //   ),
            //
            //   //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height:35,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[200],
                          spreadRadius: 1,
                          blurRadius: 4,
                        )
                      ]
                    ),
                    child: Center(
                      child: Text('Logo'),
                    ),

                  ),
                  Container(
                    height:35,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ]
                    ),
                    child: Center(
                      child: Text('Name'),
                    ),

                  ),
                  Container(
                    height:35,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            spreadRadius: 1,
                            blurRadius: 4,
                          )
                        ]
                    ),
                    child: Center(
                      child: Text('Email'),
                    ),

                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: size.height*0.54,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 4,
                          //offset: Offset(0, 3)
                      )
                    ]
                  ),
                  child: DragArea(child: icon(),selectBannerImage: bannerImage,frames: frames,),
                ),
              ),
            ),






            Padding(
              padding: const EdgeInsets.only(top: 500.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end, // start at end/bottom of column
               // crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Container(
                    height: size.height*0.15,

                    //margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListView(
                      //padding: EdgeInsets.only(right: 12),
                      controller: controller,
                      scrollDirection: Axis.horizontal,

                      children: [
                        SizedBox(width: 7,),

                        frameModel(
                         context: context,
                          onClick: (){
                            setState(() {
                              frames=Frame1(
                                height: 20,
                                width: 150,
                                nameStyle: TextStyle(fontSize:12,color: Colors.white),
                                toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                              );
                              // bannerImage='assets/holi-parties.jpg';
                            });
                          },
                          child:Frame1(
                              height: 10,
                              width: size.width*0.205,
                              nameStyle: TextStyle(fontSize:7,color: Colors.white),
                              toShowNumber: Text('')
                            //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                          ),
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {
                              frames=Frame1(
                                height: 20,
                                width: 150,
                                nameStyle: TextStyle(fontSize:12,color: Colors.white),
                                toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                              );
                              // bannerImage='assets/holi-parties.jpg';
                            });
                          },
                          child:Frame1(
                              height: 10,
                              width: size.width*0.205,
                              nameStyle: TextStyle(fontSize:7,color: Colors.white),
                              toShowNumber: Text('')
                            //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                          ),
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {
                              frames=Frame1(
                                height: 20,
                                width: 150,
                                nameStyle: TextStyle(fontSize:12,color: Colors.white),
                                toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                              );
                              // bannerImage='assets/holi-parties.jpg';
                            });
                          },
                          child:Frame1(
                              height: 10,
                              width: size.width*0.205,
                              nameStyle: TextStyle(fontSize:7,color: Colors.white),
                              toShowNumber: Text('')
                            //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                          ),
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {
                              frames=Frame1(
                                height: 20,
                                width: 150,
                                nameStyle: TextStyle(fontSize:12,color: Colors.white),
                                toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                              );
                              // bannerImage='assets/holi-parties.jpg';
                            });
                          },
                          child:Frame1(
                              height: 10,
                              width: size.width*0.205,
                              nameStyle: TextStyle(fontSize:7,color: Colors.white),
                              toShowNumber: Text('')
                            //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                          ),
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {
                              frames=Frame1(
                                height: 20,
                                width: 150,
                                nameStyle: TextStyle(fontSize:12,color: Colors.white),
                                toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                              );
                              // bannerImage='assets/holi-parties.jpg';
                            });
                          },
                          child:Frame1(
                              height: 10,
                              width: size.width*0.205,
                              nameStyle: TextStyle(fontSize:7,color: Colors.white),
                              toShowNumber: Text('')
                            //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                          ),
                        ),

                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       frames=Frame1(
                        //         height: 20,
                        //         width: 150,
                        //         nameStyle: TextStyle(fontSize:12,color: Colors.white),
                        //         toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                        //       );
                        //      // bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //       width: size.width*0.209,
                        //       decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               spreadRadius: 1,
                        //               blurRadius: 3,
                        //               offset: Offset(0, 3)
                        //           )
                        //         ]
                        //       ),
                        //       child: Frame1(
                        //         height: 10,
                        //         width: 65,
                        //         nameStyle: TextStyle(fontSize:7,color: Colors.white),
                        //         toShowNumber: Text('')
                        //         //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                        //       ),
                        //       //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 5,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       frames=_Frame2(
                        //         height: 30,
                        //         width: 300,
                        //         nameStyle: TextStyle(fontSize:12,color: Colors.white),
                        //         addressStyle: TextStyle(fontSize:12,color: Colors.white),
                        //       );
                        //       //bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               spreadRadius: 1,
                        //               blurRadius: 3,
                        //               offset: Offset(0, 3)
                        //           )
                        //         ]
                        //     ),
                        //     // child: _Frame2(
                        //     //   height: 15,
                        //     //   width: 100,
                        //     //   nameStyle: TextStyle(fontSize:7,color: Colors.white),
                        //     //   addressStyle: TextStyle(fontSize:7,color: Colors.white),
                        //     // ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        //SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[300],
                        //               blurRadius: 1,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[300],
                        //               blurRadius: 1,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       //bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[400],
                        //               blurRadius: 3,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),


                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: size.height*0.15,

                    //margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListView(
                      //padding: EdgeInsets.only(right: 12),
                      controller: controller,
                      scrollDirection: Axis.horizontal,

                      children: [
                        SizedBox(width: 7,),

                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {

                               bannerImage='assets/holi_img_1.jpg';
                            });
                          },
                          child:Image.asset('assets/holi_img_1.jpg')
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {

                               bannerImage='assets/holi_img_2.jpg';
                            });
                          },
                          child:Image.asset('assets/holi_img_2.jpg')
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {

                              bannerImage='assets/holi_img_3.jpg';
                            });
                          },
                          child:Image.asset('assets/holi_img_3.jpg')
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {

                               bannerImage='assets/holi_img_4.jpg';
                            });
                          },
                          child:Image.asset('assets/holi_img_4.jpg')
                        ),

                        //SizedBox(width: 5,),
                        frameModel(
                          context: context,
                          onClick: (){
                            setState(() {

                               bannerImage='assets/holi_1.jpg';
                            });
                          },
                          child:Image.asset('assets/holi_1.jpg')
                        ),

                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       frames=Frame1(
                        //         height: 20,
                        //         width: 150,
                        //         nameStyle: TextStyle(fontSize:12,color: Colors.white),
                        //         toShowNumber: Text('+91 9999 0000',style:TextStyle(fontSize:12, color: Colors.white),),
                        //       );
                        //      // bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //       width: size.width*0.209,
                        //       decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               spreadRadius: 1,
                        //               blurRadius: 3,
                        //               offset: Offset(0, 3)
                        //           )
                        //         ]
                        //       ),
                        //       child: Frame1(
                        //         height: 10,
                        //         width: 65,
                        //         nameStyle: TextStyle(fontSize:7,color: Colors.white),
                        //         toShowNumber: Text('')
                        //         //phoneStyle: TextStyle(fontSize:7, color: Colors.black),
                        //       ),
                        //       //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 5,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       frames=_Frame2(
                        //         height: 30,
                        //         width: 300,
                        //         nameStyle: TextStyle(fontSize:12,color: Colors.white),
                        //         addressStyle: TextStyle(fontSize:12,color: Colors.white),
                        //       );
                        //       //bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey.withOpacity(0.5),
                        //               spreadRadius: 1,
                        //               blurRadius: 3,
                        //               offset: Offset(0, 3)
                        //           )
                        //         ]
                        //     ),
                        //     // child: _Frame2(
                        //     //   height: 15,
                        //     //   width: 100,
                        //     //   nameStyle: TextStyle(fontSize:7,color: Colors.white),
                        //     //   addressStyle: TextStyle(fontSize:7,color: Colors.white),
                        //     // ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        //SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[300],
                        //               blurRadius: 1,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[300],
                        //               blurRadius: 1,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),
                        // SizedBox(width: 7,),
                        // GestureDetector(
                        //   onTap: (){
                        //     setState(() {
                        //       //bannerImage='assets/holi-parties.jpg';
                        //     });
                        //   },
                        //
                        //   child: Container(
                        //     height: 90,
                        //     width: 85,
                        //     decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         boxShadow: [
                        //           BoxShadow(
                        //               color: Colors.grey[400],
                        //               blurRadius: 3,
                        //               spreadRadius: 2
                        //           )
                        //         ]
                        //     ),
                        //     //child: Image.asset('assets/holi-parties.jpg',fit: BoxFit.fill,)
                        //   ),
                        // ),


                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),


    );
  }
}



Widget icon(){
  return

    Container(
      height: 90,
      width: 90,

      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.blueAccent),
        //color: Colors.orange,
      ),
      child: Stack(
        children: [
          Positioned(
            top:0,
            right:0,
            child:GestureDetector(
              onTap: (){

              },
              child: Icon(
                Icons.cancel,
                color: Colors.black.withOpacity(0.5),
                //size: 18,
              ),
            ),
          ),
          Center(child: Image.asset('assets/logo.png',)),
        ],
      ),
    );
}

Widget _holiAppBar(context){
  return PreferredSize(
    preferredSize: Size.fromHeight(55.0),
    child: AppBar(
      backgroundColor: Colors.transparent,
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
            icon: Icon(
              Icons.download,
              color: Colors.black,
            ),
            onPressed: ()async{

              print('this is the width-${MediaQuery.of(context).size.width}');

            }
        )
      ],

    ),
  );
}



Widget _Frame2({double height,double width,TextStyle nameStyle,TextStyle addressStyle}){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child:

          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color:Colors.black,
                borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('+91 9999 0000',style: nameStyle),
                Text('address: India',style: addressStyle),
              ],
            ),

          ),


      ),
    );

}