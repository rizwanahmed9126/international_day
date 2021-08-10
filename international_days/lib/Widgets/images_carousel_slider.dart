import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarouselSlider extends StatefulWidget {
   List<Widget> imagesList=[];
   ImageCarouselSlider({
     Key key,
     this.imagesList,
   }) : super(key: key);

  @override
  _ImageCarouselSliderState createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {

  int currentPos = 0;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child:
        Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 178,


                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 2,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  disableCenter: false,
                  //viewportFraction: 0.5,

                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }
              ),
              items: widget.imagesList,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.imagesList.map((url) {
                int index = widget.imagesList.indexOf(url);
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


      );
  }
}
