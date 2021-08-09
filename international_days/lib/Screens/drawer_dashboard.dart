//import 'package:dawn/Screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:international_todays/Screens/Home.dart';
import 'package:international_todays/Screens/login_screen.dart';



class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  Size size;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffBDBDBD), //3
                    Colors.grey[400], //2
                    Colors.grey, //1

                    //Color(0xff558E92),
                  ])),
          child: Padding(
            padding: EdgeInsets.only(top: 55.0, left: 13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 30.0,
                    child: Icon(Icons.person),
                    //backgroundImage: AssetImage('assets/image_1.png')
                ),
                SizedBox(
                  height: 12.0,
                ),
                Text(
                  'Darshan',
                  style: GoogleFonts.notoSans(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.inventory,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  title: Text(
                    'Profile',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  title: Text(
                    'Notifications',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.manage_accounts,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  title: Text(
                    'About',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.manage_accounts,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  title: Text(
                    'Share',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(
                    Icons.report,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  title: Text(
                    'Rate',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                ),
                ListTile(
                  selectedTileColor: Color(0xff7CBAB8),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.logout,size: 18.0,color: Colors.white,),
                  title: Text(
                    'Logout',
                    style: GoogleFonts.notoSans(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final controller = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller,
      mainScreen: Home(
        zoomController: controller,
      ),
      menuScreen: DrawerMenu(),
      style: DrawerStyle.Style1,
      showShadow: true,
      borderRadius: 24.0,
      angle: 0.0,
      slideWidth: MediaQuery.of(context).size.width * (.65),
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.easeInBack,
    );
  }
}
