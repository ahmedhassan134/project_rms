import 'package:flutter/material.dart';
import 'package:moderen/food1/food3.dart';
import 'package:moderen/food1/food4.dart';
import 'package:moderen/food1/food5.dart';
import 'package:moderen/page1.dart';
import 'package:moderen/page2.dart';

import 'food1/food1.dart';
import 'food1/food2.dart';

class Page2 extends StatefulWidget {
  const Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  Widget defaultButton1({
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
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food1();
                }));
              },
              text: "Donate El-kheir",
              image: "assets/images/food1.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          SizedBox(
            height: 3,
          ),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food2();
                }));
              },
              text: "Donate El-kheir",
              image: "assets/images/food2.jpg",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          SizedBox(
            height: 3,
          ),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food3();
                }));
              },
              text: "Donate El-kheir",
              image: "assets/images/food3.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          SizedBox(
            height: 3,
          ),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food4();
                }));
              },
              text: "Donate El-kheir",
              image: "assets/images/food4.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
          SizedBox(
            height: 3,
          ),
          defaultButton1(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return Food5();
                }));
              },
              text: "Donate El-kheir",
              image: "assets/images/food5.jfif",
              text1: "El-kheir box valued at ege 150",
              text2: "El-kheir box valued at ege 150",
              text3: "El-kheir box valued at ege 150"),
        ],
      ),
    );
  }
}
