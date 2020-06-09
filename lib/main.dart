import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: [
                Icon(
                  Icons.local_drink,
                  size: 120.0,
                ),
                Text("Water"),
              ],
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.fastfood,
                  size: 120.0,
                ),
                Text(
                  "A delicious burger entrée with coke on the side.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
