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
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.local_drink),
                  SizedBox(width: 8),
                  Text('Water'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.fastfood),
                  SizedBox(width: 8),
                  Text('A delicious burger entrée with chilled soda on the side, '
                      'perfect for a summer day'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
