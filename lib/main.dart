import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Icon(Icons.local_drink),
                Text('Water'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.fastfood),
                Text('A delicious burger entrée with chilled soda on the side, '
                    'perfect for a summer day'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
