import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  @override
  CircleState createState() => new CircleState();
}

class CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Circle'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: new Center(
        child: new Text("Circle Page", style: new TextStyle(fontSize: 35.0)),
      ),
    );
  }
}