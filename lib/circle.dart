import 'package:flutter/material.dart';
import 'timeCard.dart';
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
      body:  Container(
        child: Column(
          children: <Widget>[
            TimeCard(icon: Icons.child_care, title: 'Rounds',option:'00'),
            TimeCard(icon: Icons.cloud, title: 'Stations',option:'00'),
            TimeCard(icon: Icons.access_time, title: 'Load',option:'00:00'),
            TimeCard(icon: Icons.backup, title: 'Rest',option:'00:00'),
            TimeCard(icon: Icons.code, title: 'Rest Round',option:'00:00'),
          ],
        )),
      
      backgroundColor: Colors.grey,
      );
  }
}


