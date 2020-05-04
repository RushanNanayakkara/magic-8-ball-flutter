import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(home());

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int imageNo = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Center(child: Text("Ask Me Anything")),
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: this.changeImage,
              child: Image.asset("images/ball" + imageNo.toString() + ".png"),
            ),
          ),
        ),
      ),
    );
  }

  void changeImage() {
    setState(() {
      imageNo = Random().nextInt(4) + 1;
    });
  }
}
