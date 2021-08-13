import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:international_todays/Widgets/ads_container.dart';
import 'package:international_todays/Widgets/app_bar.dart';
import 'package:international_todays/Widgets/days_panel.dart';
import 'package:international_todays/Widgets/expandable_fab_button.dart';
import 'package:international_todays/Widgets/horizontal_images_list.dart';
import 'package:international_todays/Widgets/images_carousel_slider.dart';
import 'package:international_todays/Widgets/row_txt.dart';

class Today extends StatefulWidget {
  final  zoomController;
  const Today({Key key,this.zoomController}) : super(key: key);

  @override
  _TodayState createState() => _TodayState();
}

class _TodayState extends State<Today> {

  final controller = ScrollController();



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
                firstTxt: 'TODAY',
                secondTxt: '01-January',
                secondTxtStyle: TextStyle(color: Colors.blue),
              ),
              DaysPanel(
                todayTxt: 'TODAY',
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 8),
                child: RowText(
                  firstTxt: 'TODAY NEWS',
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
                      firstTxt: 'TODAY MARKET',
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
