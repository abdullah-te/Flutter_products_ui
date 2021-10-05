import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:product_ui/widgets/page_transform.dart';
import 'package:product_ui/widgets/slide_dots_widget.dart';
import 'package:transformer_page_view/transformer_page_view.dart';

class UI3 extends StatefulWidget {
  const UI3({Key? key}) : super(key: key);

  @override
  _UI3State createState() => _UI3State();
}

class _UI3State extends State<UI3> {
  int _currentPage = 0;

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder:(context, orientation) =>
      orientation == Orientation.portrait
          ?  buildPortrait()
          : buildLandscape(),
    );
  }

  Widget buildPortrait() {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent.withOpacity(1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(1),
                      blurRadius: 30.00,
                      spreadRadius: 2.0,
                    ),
                  ]
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: MediaQuery.of(context).size.width*0.2,
                    sigmaY: MediaQuery.of(context).size.height*0.01),
                child: Container(
                  // color: Colors.yellowAccent.withOpacity(0),
                ),
              ),
            ),

            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                    Container(
                      //color: Colors.white,
                      child: SvgPicture.asset(
                        'assets/menu_23.svg',
                        fit: BoxFit.fill ,
                        height:  MediaQuery.of(context).size.height*0.04,
                        width:  MediaQuery.of(context).size.width,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.68,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.width*0.1,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.06,),

                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.068,),
                    Text("Every Bite a",style: TextStyle(color: Colors.white,fontSize: 30),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.075,),
                    Text("Better burger!",style: TextStyle(color: Colors.white,fontSize: 19),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        if( 0 == _currentPage )
                          SliderDot(true),
                        Text("Burger",style: TextStyle(color: Colors.white,fontSize: 0 == _currentPage? 20:15),),
                      ],
                    ),
                    Row(
                      children: [
                        if( 1 == _currentPage )
                          SliderDot(true),
                        Text("Pasta",style: TextStyle(color: Colors.white,fontSize: 1 == _currentPage? 20:15),),
                      ],
                    ),
                    Row(
                      children: [
                        if( 2 == _currentPage )
                          SliderDot(true),
                        Text("Salads",style: TextStyle(color: Colors.white,fontSize: 2 == _currentPage? 20:15),),
                      ],
                    ),
                    Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.048,
                        width: MediaQuery.of(context).size.width*0.09,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          shape: BoxShape.circle,),
                      ),
                      Container(
                        margin:  EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width*0.015,
                            MediaQuery.of(context).size.height*0.009,
                            0, 0),
                        child: SvgPicture.asset(
                          'assets/filter_12.svg',
                          height:  MediaQuery.of(context).size.height*0.03,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    ),
                  ],
                ),

                Expanded(
                  child: TransformerPageView(
                    scrollDirection: Axis.horizontal,
                    transformer: ScaleAndFadeTransformer(),
                    viewportFraction: 0.8,
                    onPageChanged: _onPageChanged,
                    itemCount: 3,
                    itemBuilder: (ctx, i) =>
                        Container(
                          child: GridView.count(
                              crossAxisCount: 2,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/Burger.png',scale: 7,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/Burger2.png',scale: 11,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/Burger3.png',scale: 2.5,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/purepng.png',scale: 7,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ]
                          ),
                        ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  color: Colors.grey[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Icon(
                        Icons.mail,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.share,
                        size: 25,
                        color: Colors.white,
                      ),
                      Stack(
                        children: [

                          Container(
                            margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width*0.04,
                                MediaQuery.of(context).size.height*0.022,
                                0,0),
                            height: 5.0,
                            width: 5,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.withOpacity(1),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow.withOpacity(1),
                                    blurRadius: 12.00,
                                    spreadRadius: 20.0,
                                  ),
                                ]
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width*0.02,
                                MediaQuery.of(context).size.height*0.012,
                                0,0),
                            height: 25.0,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            size: 40,
                            color: Colors.orange,
                          ),
                        ],
                      ),

                      Icon(
                        Icons.shop_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.person,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }

  Widget buildLandscape() {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.06,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent.withOpacity(1),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow.withOpacity(1),
                      blurRadius: 30.00,
                      spreadRadius: 2.0,
                    ),
                  ]
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: MediaQuery.of(context).size.width*0.2,
                    sigmaY: MediaQuery.of(context).size.height*0.01),
                child: Container(
                  // color: Colors.yellowAccent.withOpacity(0),
                ),
              ),
            ),

            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.065,),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                    Container(
                      //color: Colors.white,
                      child: SvgPicture.asset(
                        'assets/menu_23.svg',
                        fit: BoxFit.fill ,
                        height:  MediaQuery.of(context).size.height*0.04,
                        width:  MediaQuery.of(context).size.width,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width*0.78,),
                    Container(
                      height: MediaQuery.of(context).size.height*0.1,
                      width: MediaQuery.of(context).size.width*0.12,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        shape: BoxShape.circle,),
                      child: Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),

                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.068,),
                    Text("Every Bite a",style: TextStyle(color: Colors.white,fontSize: 30),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width*0.075,),
                    Text("Better burger!",style: TextStyle(color: Colors.white,fontSize: 19),),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        if( 0 == _currentPage )
                          SliderDot(true),
                        Text("Burger",style: TextStyle(color: Colors.white,fontSize: 0 == _currentPage? 20:15),),
                      ],
                    ),
                    Row(
                      children: [
                        if( 1 == _currentPage )
                          SliderDot(true),
                        Text("Pasta",style: TextStyle(color: Colors.white,fontSize: 1 == _currentPage? 20:15),),
                      ],
                    ),
                    Row(
                      children: [
                        if( 2 == _currentPage )
                          SliderDot(true),
                        Text("Salads",style: TextStyle(color: Colors.white,fontSize: 2 == _currentPage? 20:15),),
                      ],
                    ),
                    Stack(children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.068,
                        width: MediaQuery.of(context).size.width*0.1,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          shape: BoxShape.circle,),
                      ),
                      Container(
                        margin:  EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.width*0.04,
                            MediaQuery.of(context).size.height*0.015,
                            0, 0),
                        child: SvgPicture.asset(
                          'assets/filter_12.svg',
                          height:  MediaQuery.of(context).size.height*0.04,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    ),
                  ],
                ),

                Expanded(
                  child: TransformerPageView(
                    scrollDirection: Axis.horizontal,
                    transformer: ScaleAndFadeTransformer(),
                    viewportFraction: 0.8,
                    onPageChanged: _onPageChanged,
                    itemCount: 3,
                    itemBuilder: (ctx, i) =>
                        Container(
                          child: GridView.count(
                              childAspectRatio: 3/2,
                              crossAxisCount: 2,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/Burger.png',scale: 7,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/Burger2.png',scale: 11,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/Burger3.png',scale: 2.5,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/purepng.png',scale: 7,),
                                    Text("Beef Burger",style: TextStyle(color: Colors.white,fontSize: 18),),
                                    Text("Onion with cheese",style: TextStyle(color: Colors.white),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("\$15",style: TextStyle(color: Colors.white),),
                                        Icon(
                                          Icons.add_circle_outlined,
                                          size: 15,
                                          color: Colors.orangeAccent,
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              ]
                          ),
                        ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.09,
                  color: Colors.grey[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:  [
                      Icon(
                        Icons.mail,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.share,
                        size: 25,
                        color: Colors.white,
                      ),
                      Stack(
                        children: [

                          Container(
                            margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width*0.027,
                                MediaQuery.of(context).size.height*0.045,
                                0,0),
                            height: 5.0,
                            width: 5,
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.withOpacity(1),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow.withOpacity(1),
                                    blurRadius: 12.00,
                                    spreadRadius: 15.0,
                                  ),
                                ]
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                MediaQuery.of(context).size.width*0.012,
                                MediaQuery.of(context).size.height*0.02,
                                0,0),
                            height: 25.0,
                            width: 25,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                            ),
                          ),
                          Icon(
                            Icons.add_circle_outlined,
                            size: 40,
                            color: Colors.orange,
                          ),
                        ],
                      ),

                      Icon(
                        Icons.shop_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.person,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]
      ),
    );
  }
}
