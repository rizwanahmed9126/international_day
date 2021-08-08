import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

AppBar appBarWidget(BuildContext context,ZoomDrawerController controller)
{

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Center(
      child: Container(
        height: 40,
        child: Image.asset('assets/Today.png'),
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.menu, color: Colors.black), // set your color here
      onPressed: () {
        controller.open!();
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.calendar_today_outlined,
          color: Colors.black,
        ),
        onPressed: () {
          // do something
        },
      )
    ],

  );
}