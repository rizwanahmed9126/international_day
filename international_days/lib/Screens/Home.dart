import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:international_todays/Widgets/app_bar.dart';
import 'package:international_todays/Widgets/expandable_fab_button.dart';

class Home extends StatefulWidget {

  final  zoomController;

  const Home({Key key,this.zoomController}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  final controller = ScrollController();
  int currentPos = 0;
  List<Widget> imagesList = [
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png"),
    Image.asset("assets/Rectangle 2.png")

  ];
  AnimationController animationController;
  Animation degOneTranslationAnimation;
  Animation rotationAnimation;

  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 250));
    degOneTranslationAnimation=Tween(begin: 0.0,end: 1.0).animate(animationController);
    rotationAnimation=Tween(begin: 180,end: 0.0).animate(CurvedAnimation(parent: animationController, curve: Curves.easeOut));
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
      floatingActionButton:ExpandableFabButton(
        onClick2: (){

        },
        onClick1: (){
          print('this is animation controller-${animationController.isCompleted}');
          if(animationController.isCompleted){
            animationController.reverse();
          }
          else{
            animationController.forward();
            print('this is forword');
          }
        },
        onClick3: (){},
        onClick4: (){},
        distance: degOneTranslationAnimation.value*100,
        rotationValue: rotationAnimation.value,

      ),
      body: SingleChildScrollView(
        child: Container(
          //color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 20,top: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('Hello Darshan!!!'),
                    ),
                    Container(
                      child: Text('Go to Today Meme',style: TextStyle(color: Colors.blue),),
                    )
                  ],
                ),
              ),




              Container(
                child:
                Column(
                  children: [
                CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: false,
                    autoPlay: true,
                    aspectRatio: 2,//16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentPos = index;
                      });
                    }
                ),
                items: imagesList,
              ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagesList.map((url) {
                        int index = imagesList.indexOf(url);
                        print('index: $index');
                        return Container(
                          width: 6.0,
                          height: 6.0,
                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(

                              shape: BoxShape.circle,
                              color: currentPos == index ? Color.fromRGBO(135,206,235, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),


              ),






              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffBDBDBD),
                            blurRadius: 2,
                            spreadRadius: 1,
                            offset: Offset(0, 3),
                          )
                        ]
                      ),
                      child: Center(

                        child: Text('ADS',style: TextStyle(fontSize: 20,color: Color(0xff686868)),),
                      ),
                    ),

                  ],
                ),
              ),
              //SizedBox(height: 10,),
              Container(
                height: 105,
                width: size.width * 0.9,
                child: ListView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,

                  children: [
                    sliderTile('assets/image_1.png','Today'),
                    sliderTile('assets/image_2.png','Tomorrow'),
                    sliderTile('assets/image_3.png','National\n Days'),
                    sliderTile('assets/image_4.png','International\nDays'),
                    sliderTile('assets/image_5.png','Birth\nDays'),
                    sliderTile('assets/image_1.png','Today'),
                    sliderTile('assets/image_2.png','Tomorrow'),
                    sliderTile('assets/image_3.png','National\n Days'),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  //height: 200,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffBDBDBD),
                          blurRadius: 6,
                          spreadRadius: 1,
                          //offset: Offset(0, 3),
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.arrow_back_ios,size: 17,),
                            Text('January'),
                            Icon(Icons.arrow_forward_ios,size: 17,)
                          ],
                        ),


                      ),
                      ListTile(
                        leading:
                        Container(

                            child: Image.asset('assets/january_1.png')
                        ),
                        title: Text('National Bloody Mary Day',style: TextStyle(fontSize: 15,color: Colors.black),),
                        subtitle: Text('January-01\n Food',style: TextStyle(fontSize: 13),),
                        isThreeLine: true,

                      ),
                      ListTile(
                        leading:
                        Container(

                            child: Image.asset('assets/january_2.png')
                        ),
                        title: Text('National Bloody Mary Day',style: TextStyle(fontSize: 15),),
                        subtitle: Text('January-01\n Food',style: TextStyle(fontSize: 13),),
                        isThreeLine: true,

                      ),
                      ListTile(
                        leading:
                        Container(

                            child: Image.asset('assets/january_3.png')
                        ),
                        title: Text('National Bloody Mary Day',style: TextStyle(fontSize: 15),),
                        subtitle: Text('January-01\n Food',style: TextStyle(fontSize: 13),),
                        isThreeLine: true,

                      ),
                      ListTile(
                        leading:
                        Container(

                            child: Image.asset('assets/january_1.png')
                        ),
                        title: Text('National Bloody Mary Day',style: TextStyle(fontSize: 15),),
                        subtitle: Text('January-01\n Food',style: TextStyle(fontSize: 13),),
                        isThreeLine: true,

                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 20,top: 10,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text('TODAY NEWS',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      child: Text('More',style: TextStyle(color: Colors.blue),),
                    )
                  ],
                ),
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
                    Image.asset('assets/today_news_img_1.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_2.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_3.png',fit:BoxFit.fill),
                    Image.asset('assets/today_news_img_4.png',fit:BoxFit.fill),
                    // image(),
                    // image(),
                    // image(),
                    // image(),


                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(left: 18.0,right: 20,top: 10,),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('TODAY MARKET',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          child: Text('More',style: TextStyle(color: Colors.blue),),
                        ),
                        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        child: Column(
                          children: [
                            Center(child: Text("Holi is a popular ancient Indian festival also",style: TextStyle(color: Colors.grey[600]),),

                            ),
                            Center(child: Text("known as the 'Festival of Love' ...",style: TextStyle(color: Colors.grey[600])))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
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

// Widget image(){
//   return Container(
//     //height: 70,
//     //width: 70,
//     //color: Colors.redAccent,
//     child:Image.asset('assets/today_news_img_4.png', )
//   );
// }

Widget sliderTile(String imagePath,String text){
  return Column(
    children: [
      Container(
        height: 60,
          child: Image.asset(imagePath)
      ),
      Text(text,style: TextStyle(fontSize: 11),)
    ],
  );
}



