import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:international_todays/Widgets/ads_container.dart';
import 'package:international_todays/Widgets/app_bar.dart';
import 'package:international_todays/Widgets/days_panel.dart';
import 'package:international_todays/Widgets/expandable_fab_button.dart';
import 'package:international_todays/Widgets/horizontal_images_list.dart';
import 'package:international_todays/Widgets/images_carousel_slider.dart';
import 'package:international_todays/Widgets/row_txt.dart';

class Tomorrow extends StatefulWidget {
  final  zoomController;
  const Tomorrow({Key key,this.zoomController}) : super(key: key);

  @override
  _TomorrowState createState() => _TomorrowState();
}

class _TomorrowState extends State<Tomorrow> {

  final controller = ScrollController();

  List<Widget> imagesList = [
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png")

  ];
  //final controller1 = ZoomDrawerController();


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: appBarWidget(context,widget.zoomController),

      body: SingleChildScrollView(
        child: Container(
          //color: Colors.red,
          child: Column(
            children: [

              RowText(
                firstTxt: 'TOMORROW',
                secondTxt: '02-January',
                secondTxtStyle: TextStyle(color: Colors.blue),
              ),
              DaysPanel(
                todayTxt: 'TOMORROW',
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 8),
                child: RowText(
                  firstTxt: 'UPCOMING NEWS',
                  secondTxt: 'More',
                  secondTxtStyle: TextStyle(color: Colors.blue),
                  firstTxtStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
              ),


              Container(
                //height: 350,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.only(left: 12.0,right: 12,top: 12),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,

                  children: [
                    Image.asset('assets/today_news_img_1.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_2.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_3.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_4.png',fit:BoxFit.fill),

                  ],
                ),
              ),




              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: RowText(
                      firstTxt: 'UPCOMING MARKET',
                      secondTxt: 'More',
                      secondTxtStyle: TextStyle(color: Colors.blue),
                      firstTxtStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child:
                    Text("Holi is a popular ancient Indian festival also\n known as the 'Festival of Love' ...",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[600],fontSize: 16),),


                  )
                ],
              ),
              Container(
                //height: 350,
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  padding: const EdgeInsets.all(12.0),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,

                  children: [
                    Image.asset('assets/today_market_img_1.png',fit:BoxFit.fill),
                    Image.asset('assets/today_market_img_2.png',fit:BoxFit.fill),
                    Image.asset('assets/today_market_img_3.png',fit:BoxFit.fill),
                    Image.asset('assets/today_market_img_4.png',fit:BoxFit.fill),



                  ],
                ),
              )





            ],
          ),
        ),
      ),
    );
  }

}
