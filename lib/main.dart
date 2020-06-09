import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  Padding createMenuItem(Icon itemIcon, String itemText) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          itemIcon,
          SizedBox(width: 15),
          Text(
            itemText,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
          backgroundColor: Colors.cyan,
        ),
        body:  Column(
            children: [
              createMenuItem(
                  Icon(Icons.local_drink, color: Colors.blue), 'Water'),
              createMenuItem(
                  Icon(Icons.fastfood, color: Colors.blue),
                  'A delicious burger entrée with chilled soda on the side, '
                  'perfect for a summer day'),
            ],
          ),
        ),
      
    );
  }
}
