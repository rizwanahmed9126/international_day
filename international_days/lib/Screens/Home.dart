import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:international_todays/Screens/birth_day.dart';
import 'package:international_todays/Screens/international.dart';
import 'package:international_todays/Screens/national.dart';
import 'package:international_todays/Screens/today.dart';
import 'package:international_todays/Screens/tomorrow.dart';
import 'package:international_todays/Widgets/ads_container.dart';
import 'package:international_todays/Widgets/app_bar.dart';
import 'package:international_todays/Widgets/days_panel.dart';
import 'package:international_todays/Widgets/expandable_fab_button.dart';
import 'package:international_todays/Widgets/horizontal_images_list.dart';
import 'package:international_todays/Widgets/images_carousel_slider.dart';
import 'package:international_todays/Widgets/row_txt.dart';

class Home extends StatefulWidget {

  final  zoomController;

  const Home({Key key,this.zoomController}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  final controller = ScrollController();

  List<Widget> imagesList = [


    Container(

      height: 100,
      width: 100,
      //color: Colors.red,
      child: FittedBox(

        alignment: Alignment.center,
        fit: BoxFit.cover,

        child: Image.asset('assets/Rectangle 2.png',fit: BoxFit.cover,),
      ),
    ),
    Container(

      height: 100,
      width: 100,
      //color: Colors.red,
      child: FittedBox(
        alignment: Alignment.center,
        fit: BoxFit.cover,

        child: Image.asset('assets/Rectangle 2.png',fit: BoxFit.cover,),
      ),
    ),


  ];
  AnimationController animationController;
  Animation degOneTranslationAnimation;
  Animation rotationAnimation;

  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 250));
    degOneTranslationAnimation=Tween(begin: 0.0,end: 1.0).animate(animationController);
    rotationAnimation=Tween(begin: 0.0,end: 180.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();

    animationController.addListener(() {
      setState(() {

      });
    });
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarWidget(context,widget.zoomController),
      floatingActionButton: //FloatingActionButton(),
      ExpandableFabButton(
        onClick2: (){

        },
        onClick1: (){
          print('this is animation controller-${animationController.isCompleted}');
          if(animationController.isCompleted){
            animationController.reverse();
          }
          else{
            animationController.forward();
          }
        },
        onClick3: (){},
        onClick4: (){},
        distance: degOneTranslationAnimation.value*30,
        rotationValue: rotationAnimation,
        degOneTranslationAnimation: degOneTranslationAnimation,

      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.red,
          child: Column(
            children: [

              RowText(
                firstTxt: 'Hello Darshan!!!',
                secondTxt: 'Go To Today Meme',
                secondTxtStyle: TextStyle(color: Colors.blue),
              ),

              ImageCarouselSlider(
                imagesList: imagesList,
              ),



              AdsContainer(txt: 'ADS',),
              SizedBox(height: 10,),

              HorizontalImagesList(
                today:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Today(

                    zoomController: widget.zoomController,
                  )));
                  },
                tomorrow:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Tomorrow(

                    zoomController: widget.zoomController,
                  )));
                },
                national:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NATIONAL(

                    zoomController: widget.zoomController,
                  )));
                },
                international:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>INTERNATIONAL(

                    zoomController: widget.zoomController,
                  )));
                },
                birth:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BIRTH(

                    zoomController: widget.zoomController,
                  )));
                },
                controller: controller,
              ),


              DaysPanel(
                todayTxt: 'January',
              ),
            ],
          ),
        ),
      ),
    );
  }
}





