import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moderen/food1/food3.dart';
import 'package:moderen/food1/food4.dart';
import 'package:moderen/food1/food5.dart';
import 'package:moderen/food2/Fodd7.dart';
import 'package:moderen/food2/Food10.dart';
import 'package:moderen/food2/Food6.dart';
import 'package:moderen/food2/Food8.dart';
import 'package:moderen/food2/Food9.dart';
import 'package:moderen/page1.dart';
import 'package:moderen/page2.dart';

import 'food1/food1.dart';
import 'food1/food2.dart';

class Page3 extends StatefulWidget {
  const Page3({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page3> {
  Widget defaultButton({
    @required Function function,
    Color background = Colors.grey,
    @required String text,
    @required String image,
    @required String text1,
    @required String text2,
    @required String text3,
  }) =>
      GestureDetector(
        onTap: function,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: background,
          ),
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        text1,
                        style: TextStyle(color: Colors.black26, fontSize: 12),
                      ),
                      Text(
                        text2,
                        style: TextStyle(color: Colors.black26, fontSize: 12),
                      ),
                    ],
                  ),
                  Image.asset(
                    image,
                    height: 50,
                    width: 150,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: Text(
                  text3,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food6();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "assets/images/w1.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food7();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "assets/images/w2.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food8();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "assets/images/w3.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food9();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "assets/images/w4.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 3,
                  ),
                  defaultButton(
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Food10();
                        }));
                      },
                      text: "Donate El-kheir",
                      image: "assets/images/w5.jpg",
                      text1: "El-kheir box valued at ege 150",
                      text2: "El-kheir box valued at ege 150",
                      text3: "El-kheir box valued at ege 150"),
                  SizedBox(
                    height: 6,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
