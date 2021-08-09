import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:international_todays/Screens/Home.dart';
import 'package:international_todays/Screens/drawer_dashboard.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/Today.png'),
                  ),
                  Container(
                    child: Text('Any Problem Instance Solution',style: TextStyle(color: Color(0xff4A4A4A)),),
                  )
                ],
              ),
            ),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:
            // ),




            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Row(
                      children: [
                        Container(
                          height:40,
                          width: 60,
                          child: TextField(
                            cursorColor: Colors.black,
                            onTap: (){},
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),

                              hintText: '+91',
                                hintStyle: TextStyle(color: Colors.black),

                                focusedBorder: OutlineInputBorder(
                                  //borderRadius: BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(width: 1,color: Color(0xffBDBDBD)),
                                ),
                              border: OutlineInputBorder(

                                borderSide: const BorderSide(color: Color(0xffBDBDBD), width: 1),

                              )
                            ),

                            autofocus: false,

                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height:40,
                          width: 200,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(

                                focusedBorder: OutlineInputBorder(
                                  //borderRadius: BorderRadius.all(Radius.circular(4)),
                                  borderSide: BorderSide(width: 1,color: Color(0xffBDBDBD)),
                                ),
                                border: OutlineInputBorder(


                                  borderSide: BorderSide(width: 1,color: Color(0xffBDBDBD)),

                                )
                            ),

                            autofocus: false,

                          ),
                        )
                      ],
                    ),


                    SizedBox(height: 20,),

                    Container(
                      height: 45,
                      width: 275,
                      decoration: BoxDecoration(
                          color: Color(0xff686868),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xffE0E0E0),
                                blurRadius: 12,
                                spreadRadius: 5
                            )
                          ]
                      ),

                      child: TextButton(
                        onPressed: (){
                          //final controller = ZoomDrawerController();

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomDrawer()));
                        },
                        child: Text('Next',style: TextStyle(color: Color(0xffFFFFFF)),),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}