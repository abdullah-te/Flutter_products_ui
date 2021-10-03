import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UI1 extends StatefulWidget {
  const UI1({Key? key}) : super(key: key);

  @override
  _UI1State createState() => _UI1State();
}

class _UI1State extends State<UI1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.black,
          child: SvgPicture.asset(
            'assets/Backgroundnew.svg',
            fit: BoxFit.fill ,
          ),
        ),
        AppBar(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          elevation: 60,
          leading: IconButton(
            onPressed: () async {},
            icon: const Icon(
              Icons.search,
              size: 30,
              color: Colors.redAccent,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.redAccent,
                ),
              ),
            ),

          ],
        ),
        SingleChildScrollView(
            child:  Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          SizedBox(width:MediaQuery.of(context).size.width*0.2,),
                          Container(
                              child:  Image.asset('assets/headphone.png',
                                width: MediaQuery.of(context).size.width*0.8,height: MediaQuery.of(context).size.height*0.74,)
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04,
                            top: MediaQuery.of(context).size.height*0.13),
                        child: Column(
                          children: [
                            Container(
                                child:  Image.asset('assets/sony2.png',
                                  width: MediaQuery.of(context).size.width*0.4,)
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                            Text("Headphone",style: TextStyle(fontSize: 15,)),
                            SizedBox(height:MediaQuery.of(context).size.width*0.4,),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0,
                                  MediaQuery.of(context).size.width*0.3, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.share,
                                  size: 25,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                            Container(
                              margin:  EdgeInsets.fromLTRB(0, 0,
                                  MediaQuery.of(context).size.width*0.3, 0),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.save_alt,
                                  size: 25,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.038,
                        width: MediaQuery.of(context).size.width*0.06,
                        color: Colors.transparent,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            child: Container()
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*0.009,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.038,
                        width: MediaQuery.of(context).size.width*0.06,
                        color: Colors.transparent,
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(5.0))),
                            child: Container()
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                  Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                      Text("\$39",style: TextStyle(color: Colors.white,fontSize: 30),),
                      Text(",99",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.022,),
                  Row(
                    children: [
                      Container(
                        height:  MediaQuery.of(context).size.height*0.1,
                        width:  MediaQuery.of(context).size.width*0.50,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[900],
                              borderRadius: BorderRadius.only(topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0))),
                          child: Container(
                            //margin: EdgeInsets.fromLTRB(0, 0, 100, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person_rounded,
                                    size: 30,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.3,
                                  child: Text(
                                    "This text is very very very very very very very very very very very very very very very very very very very very very very very very very long",
                                    maxLines: 2,
                                    style: TextStyle(color: Colors.white,fontSize: 15),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width*0.15,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.1,
                        width: MediaQuery.of(context).size.width*0.18,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[900],
                              borderRadius: BorderRadius.all(Radius.circular(15.0))),
                          child:  Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_shopping_cart,
                                size: 30,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
        )],
    );
  }
}
