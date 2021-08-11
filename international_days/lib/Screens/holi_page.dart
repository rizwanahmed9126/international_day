import 'package:flutter/material.dart';

class HoliPage extends StatefulWidget {
  const HoliPage({Key key}) : super(key: key);

  @override
  _HoliPageState createState() => _HoliPageState();
}

class _HoliPageState extends State<HoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _holiAppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 178.0,
                width: MediaQuery.of(context).size.width,
                //color: Colors.orange,
                child: FittedBox(
                  fit: BoxFit.fill,
                    child: Image.asset('assets/holi-parties.jpg',)
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45.0,left: 8,right: 8),
                  child: SingleChildScrollView(
                    child: Container(
                      //color: Colors.red,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Text('Happy Holi',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 7,),
                          Text("Cereals, Milk, Butter, Cheese, & More"),
                          SizedBox(height: 7,),
                          Divider(height: 2,color: Colors.grey[500]),
                          SizedBox(height: 10,),
                          Container(
                            child:
                            Text("Holi is a popular ancient Indian festival also\n known as the 'Festival of Love' ...more",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[600],fontSize: 14),),


                          ),
                          GridView.count(
                            physics: ScrollPhysics(),
                            primary: true,
                            //scrollDirection: Axis.vertical,
                            shrinkWrap: true,

                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            padding: const EdgeInsets.all(12.0),
                            mainAxisSpacing: 5.0,
                            crossAxisSpacing: 5.0,

                            children: [
                              Image.asset('assets/holi_list_img_1.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_2.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_3.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_4.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_5.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_6.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_7.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_8.png',fit:BoxFit.fill),
                              Image.asset('assets/holi_list_img_9.png',fit:BoxFit.fill),



                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 125.0, // (background container size) - (circle height / 2)
            child: Container(
              height: 100.0,
              width: 100.0,

              child: Image.asset('assets/profile.png',fit: BoxFit.fill,),
            ),
          )
        ],
      ),
    //   Column(
    //     children: [
    //       Container(
    //
    //         height: 200,
    //         width: MediaQuery.of(context).size.width,
    //         child: FittedBox(
    //           child: Image.asset('assets/holi_background_images.png',fit: BoxFit.fill,),
    //           fit: BoxFit.fill,
    //         ),
    //       ),
    //
    //
    //
    //
    //
    //
    //
    //       SizedBox(height: 10,),
    //       Text('Happ Holi',style: TextStyle(fontWeight: FontWeight.bold),),
    //       SizedBox(height: 7,),
    //       Text("Cereals, Milk, Butter, Cheese, & More"),
    //       SizedBox(height: 7,),
    //       Divider(height: 2,color: Colors.grey[500]),
    //       SizedBox(height: 10,),
    //       Container(
    //         child:
    //         Text("Holi is a popular ancient Indian festival also\n known as the 'Festival of Love' ...more",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey[600],fontSize: 14),),
    //
    //
    //       ),
    //
    // Container(
    //     //height: 700,
    //     child: GridView.count(
    //       physics: ScrollPhysics(),
    //       scrollDirection: Axis.vertical,
    //       shrinkWrap: true,
    //
    //       crossAxisCount: 3,
    //       childAspectRatio: 1,
    //       padding: const EdgeInsets.all(12.0),
    //       mainAxisSpacing: 5.0,
    //       crossAxisSpacing: 5.0,
    //
    //       children: [
    //         Image.asset('assets/holi_list_img_1.png',fit:BoxFit.fill),
    //         Image.asset('assets/holi_list_img_2.png',fit:BoxFit.fill),
    //         Image.asset('assets/holi_list_img_3.png',fit:BoxFit.fill),
    //         Image.asset('assets/holi_list_img_4.png',fit:BoxFit.fill),
    //         Image.asset('assets/holi_list_img_5.png',fit:BoxFit.fill),
    //         Image.asset('assets/holi_list_img_6.png',fit:BoxFit.fill),
    //         // Image.asset('assets/holi_list_img_7.png',fit:BoxFit.fill),
    //         // Image.asset('assets/holi_list_img_8.png',fit:BoxFit.fill),
    //         // Image.asset('assets/holi_list_img_9.png',fit:BoxFit.fill),
    //
    //
    //
    //       ],
    //     ),
    //   ),
    //
    //     ],
    //   ),

    );
  }
}


Widget _holiAppBar(){
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Center(
      child: Container(
        height: 40,
        child: Image.asset('assets/Today.png'),
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back, color: Colors.black), // set your color here
      onPressed: () {

      },
    ),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.share_outlined,
            color: Colors.black,
          ),
          onPressed: ()async{


          }
      ),
      IconButton(
          icon: ImageIcon(
            AssetImage('assets/Vector.png'),
            color: Colors.black,
          ),
          onPressed: ()async{


          }
      )
    ],

  );
}