import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:international_todays/Screens/drawer_dashboard.dart';
import 'package:international_todays/Screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: CustomDrawer(),
    );
  }
}



