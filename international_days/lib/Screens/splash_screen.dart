import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:international_todays/Screens/login_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

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
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                    color: Color(0xff686868),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 20,
                          spreadRadius: 2
                      )
                    ]
                ),

                child: TextButton(
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                  child: Text('Get Started',style: TextStyle(color: Color(0xffFFFFFF)),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}