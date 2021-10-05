import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UI2 extends StatefulWidget {
  const UI2({Key? key}) : super(key: key);

  @override
  _UI2State createState() => _UI2State();
}

class _UI2State extends State<UI2> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
            builder:(context, orientation) =>
            orientation == Orientation.portrait
                ?  buildPortrait()
                : buildLandscape(),
        );
  }
  Widget buildPortrait() => Stack(
    children: [
      Padding(
        padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.9),
        child: Stack(
          children: [

            Container(
              color: Colors.white,
              child: SvgPicture.asset(
                'assets/downbarnew.svg',
                fit: BoxFit.fill ,
                height:  MediaQuery.of(context).size.height*0.15,
                width:  MediaQuery.of(context).size.width,
              ),
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home_filled,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      AppBar(
        title: Text('Home',style: TextStyle(color: Colors.black,fontSize: 30),),
        backgroundColor: Colors.transparent,
        elevation: 400,
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width*0.05, 0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: MediaQuery.of(context).size.height*0.15,),
            Container(
              height: MediaQuery.of(context).size.height*0.21,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.028,),

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.13,),
                Text("Suggested",style: TextStyle(fontSize: 20),),
                SizedBox(width: MediaQuery.of(context).size.width*0.35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("SEE ALL",style: TextStyle(color: Colors.red),),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.035,),
            Container(
              height: MediaQuery.of(context).size.height*0.32,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.17,)
                        ),
                        Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.23,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all( Radius.circular(10.0)),
                          ),
                          child: Center(child: Text("SHOP NOW",
                            style: TextStyle(fontSize: 15 ,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),)
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.17,)
                        ),
                        Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.23,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all( Radius.circular(10.0)),
                          ),
                          child: Center(child: Text("SHOP NOW",
                            style: TextStyle(fontSize: 15 ,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),)
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.17,)
                        ),
                        Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.23,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all( Radius.circular(10.0)),
                          ),
                          child: Center(child: Text("SHOP NOW",
                            style: TextStyle(fontSize: 15 ,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),)
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.25,
                              height: MediaQuery.of(context).size.height*0.17,)
                        ),
                        Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                        Container(
                          height: MediaQuery.of(context).size.height*0.05,
                          width: MediaQuery.of(context).size.width*0.23,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all( Radius.circular(10.0)),
                          ),
                          child: Center(child: Text("SHOP NOW",
                            style: TextStyle(fontSize: 15 ,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),)
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                Text("Categories",style: TextStyle(fontSize: 20),),
                SizedBox(width: MediaQuery.of(context).size.width*0.32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("SEE ALL",style: TextStyle(color: Colors.red),),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),



            SizedBox(height: MediaQuery.of(context).size.height*0.028,),

          ],
        ) ,
      ),
    ],
  );
  Widget buildLandscape() => Stack(
    children: [
      Padding(
        padding:  EdgeInsets.only(top:MediaQuery.of(context).size.height*0.86),
        child: Stack(
          children: [
            Container(
              color: Colors.white,
              child: SvgPicture.asset(
                'assets/downbarnew.svg',
                fit: BoxFit.fill ,
               /* height:  MediaQuery.of(context).size.height*0.15,
                width:  MediaQuery.of(context).size.width,*/
              ),
            ),
            Column(
              children: [
               // SizedBox(height: MediaQuery.of(context).size.width*0.00002,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.home_filled,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      AppBar(
        title: Text('Home',style: TextStyle(color: Colors.black,fontSize: 30),),
        backgroundColor: Colors.transparent,
        elevation: 400,
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, MediaQuery.of(context).size.width*0.06, 0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Container(
              height: MediaQuery.of(context).size.height*0.21,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.23,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.008,),

            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.13,),
                Text("Suggested",style: TextStyle(fontSize: 20),),
                SizedBox(width: MediaQuery.of(context).size.width*0.58,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("SEE ALL",style: TextStyle(color: Colors.red),),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.025,),
            Container(
              height: MediaQuery.of(context).size.height*0.21,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.13,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.13,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                  Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all( Radius.circular(15.0))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child:  Image.asset('assets/headphone.png',
                              width:MediaQuery.of(context).size.width*0.15,
                              height: MediaQuery.of(context).size.height*0.2,)
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("New Arrivals",style: TextStyle(fontSize: 20 ,color: Colors.black),),
                            Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              width: MediaQuery.of(context).size.width*0.13,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.all( Radius.circular(10.0)),
                              ),
                              child: Center(child: Text("SHOP NOW",
                                style: TextStyle(fontSize: 15 ,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),)
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.001,),
            Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width*0.15,),
                Text("Categories",style: TextStyle(fontSize: 20),),
                SizedBox(width: MediaQuery.of(context).size.width*0.55,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("SEE ALL",style: TextStyle(color: Colors.red),),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.028,),

          ],
        ) ,
      ),
    ],
  );

}

