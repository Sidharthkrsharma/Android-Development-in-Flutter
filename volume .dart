import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 70;

  void increase() {
    if (level < 100) {
      level++;
    }
  }

  void decrease() {
    if (level > 0) {
      level--;
    }
  }

  Widget button(IconData icon, void Function() fun) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(19)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder (
            borderRadius: BorderRadius.circular(100.10),
          ),
        ),
      ),
      onPressed: () {
        fun();
        setState(() {});
      },
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }

  Widget progressBar({required int level}) {
    return Container(
      width: 240,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 9, vertical: 24),
      child: Row(
        children: [
          Expanded(
            flex: level,
            child: Container(
              color: Colors.teal,
            ),
          ),
          Expanded(
            flex: (100 - level),
            child: Container(
              color: Colors.grey[350],
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$level%',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  color: Colors.white,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button(Icons.remove, decrease),
                      progressBar(level: level),
                      button(Icons.add, increase),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
