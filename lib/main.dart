import 'package:flutter/material.dart';

import './circle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'CrossTimer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
       routes: <String, WidgetBuilder>{
      '/circle': (BuildContext context) => new Circle(),
      //'/page3': (BuildContext context) => new Page3()
},
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Crosstimer'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Zirkel'),
              trailing: Icon(Icons.settings_backup_restore),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/circle');
              },
            ),
            ListTile(
              title: Text('Timer'),
              trailing: Icon(Icons.timer),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Interval'),
              trailing: Icon(Icons.track_changes),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Pyramide'),
              trailing: Icon(Icons.change_history),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
