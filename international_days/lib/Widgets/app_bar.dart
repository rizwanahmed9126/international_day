import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

AppBar appBarWidget(BuildContext context,ZoomDrawerController controller,)
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
        controller.open();
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.calendar_today_outlined,
          color: Colors.black,
        ),
        onPressed: ()async{
          var showPickedDate=await _selectTime(context);
          print('picked Date--$showPickedDate');

        }
      )
    ],

  );
}


 Future<dynamic>_selectTime(BuildContext context) async {
   DateTime pickedDate = DateTime.now();
   pickedDate= await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),

      lastDate: DateTime.now(),

  builder: (context, child) {
    return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.dark(
            primary: Colors.grey,//Color(0xff686868),
            onPrimary: Colors.white,
            surface: Colors.grey,//Color(0xff686868),
            onSurface: Colors.black,
          ),
        ),
        child: child);
  });
   return pickedDate;
}