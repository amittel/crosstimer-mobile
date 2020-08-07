import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  
  final IconData icon;
  final String title;
  final String option;
  
  TimeCard({this.icon, this.title, this.option});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          splashColor: Colors.red.withAlpha(50),
            onTap: () {
              print('Card tapped.');
            },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(icon, size: 30),
                title: Text(title, style: TextStyle(fontSize: 30.0)),
                trailing: Text(option,style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final leftSection = new Container(
  child: new Icon(
      Icons.favorite,
      color: Colors.pink,
      size: 24.0,
      semanticLabel: 'Text to announce in accessibility modes',
    )
);


final rightSection = new Container(
  child: new Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      new Text("09:50",
          style: new TextStyle(
            color: Colors.lightGreen,
          fontSize: 12.0),),
    ],
  ),
);