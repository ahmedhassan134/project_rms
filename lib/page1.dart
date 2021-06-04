import 'package:flutter/material.dart';
import 'package:moderen/Page3.dart';
import 'package:moderen/food1/food2.dart';
import 'package:moderen/page2.dart';

class Page1 extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<Page1>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Row(
          children: [
            Column(
              children: [
                Text(
                  " كل الخير ",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text(
                  "  شهر الخير ",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "assets/images/w.jpg",
              height: 70,
              width: 90,
              fit: BoxFit.cover,
            ),
          ],
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            maxRadius: 22,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Masr EL-Kheir",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "info",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        Text(
                          "charity",
                          style: TextStyle(color: Colors.black26, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.4',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "(203 Ratings)",
                                  style: TextStyle(color: Colors.black38),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Text(
                              "Reviews",
                              style: TextStyle(color: Colors.red, fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(vertical: 3),
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.auto_fix_high,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Within 15 mins",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Text(
                                  "(EGE 0.00 delivery)",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 15),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 2,
                          margin: EdgeInsets.symmetric(vertical: 3),
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TabBar(controller: _controller, tabs: [
                          Tab(
                            child: Text(
                              'most selling',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Masr EL-kheir',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 22),
                            ),
                          )
                        ]),
                        new Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.blue,
                          child: new TabBarView(
                            controller: _controller,
                            children: <Widget>[
                              Page2(),
                              Page3(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // MaterialButton(onPressed: (){},
                    //   padding: EdgeInsets.all(10),
                    //
                    // color: Colors.blue,
                    // child: Text("fffffff",style: TextStyle(color: Colors.white,fontSize: 22),),
                    // )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
