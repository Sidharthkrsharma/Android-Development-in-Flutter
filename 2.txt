import 'package:flutter/material.dart';

Container roundedSquare({
  double width = double.infinity,
  double height = 70,
  required Color bgColor,
  required Color textColor,
  required String text1,
  required String text2,
  required String text3,
  required double border_width,
  required Color border_Color,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1),
            Text(" "),
            Text(text2),
          ],
        ),
        Column(
          children: [
            Text(text3),
          ],
        ),
      ],
    ),
    margin: EdgeInsets.symmetric(horizontal: 10.0),
    decoration: BoxDecoration(
      color: bgColor,
      borderRadius: BorderRadius.circular(border_width),
      border: Border.all(color: border_Color),
    ),
  );
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: double.infinity),
              SizedBox(
                height: 20,
              ),
              roundedSquare(
                textColor: Colors.black,
                bgColor: Colors.teal,
                text1: ("23/05/22"),
                text2: ("Fetch milk from the market"),
                text3: ("Monday"),
                border_width: 30.0,
                border_Color: Colors.yellow,
              ),
              SizedBox(
                height: 20,
              ),
              roundedSquare(
                text1: ("24/05/22"),
                text2: ("Pay electricity bills"),
                text3: ("Tuesday"),
                bgColor: Colors.teal,
                textColor: Colors.black,
                border_width: 30.0,
                border_Color: Colors.yellow,
              ),
              SizedBox(
                height: 20,
              ),
              roundedSquare(
                bgColor: Colors.teal,
                textColor: Colors.black,
                text1: ("24/05/22"),
                text2: ("Complete flutter assignment"),
                text3: ("Tuesday"),
                border_width: 30.0,
                border_Color: Colors.yellow,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
