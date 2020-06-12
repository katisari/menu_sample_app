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
          Expanded(
            child: Text(
              itemText,
              style: TextStyle(fontSize: 16),
            ),
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
        body: Column(
          children: [
            Row(children: [
              // Column()
              Text(
                  'Welcome to the most delicious restaurant'),
            ]),
            // does text overflow to the widget direction? since it's column, it would overflow to the bottom?
            Row(children: [
              // Column()
              Text(
                  'Food Icon'),
              VerticalDivider(),
              Text('Description'),
            ]),
            Row(children: [
              Text(
                  'Choose'),
            ]),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                      leading: Icon(Icons.local_drink, color: Colors.blue),
                      title: Text('Water')),
                  ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.blue),
                    title: Text(
                        'A delicious burger entrée with chilled soda on the side, '
                        'perfect for a summer day'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
