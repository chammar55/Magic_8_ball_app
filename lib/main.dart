import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade700,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Image.asset('images/ball$number.png'),
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5) + 1;
                });
              },
            ),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
