import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  ListTile createMenuItem(Icon itemIcon, String itemText) {
    return ListTile(
      leading: itemIcon,
      title: Text(itemText),
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
              Text(
                  'Welcome to one of the best virtual restaurants you\'ll ever visit'),
            ]),
            // does text overflow to the widget direction? since it's column, it would overflow to the bottom?
            Row(children: [
              // Column()
              Text('Food Icon'),
              VerticalDivider(),
              Text('Description'),
            ]),
            Expanded(
              child: ListView(
                children: [
                  createMenuItem(
                      Icon(Icons.local_drink, color: Colors.blue), 'Water'),
                  createMenuItem(
                      Icon(Icons.fastfood, color: Colors.blue),
                      'A delicious burger entrée with chilled soda on the side, '
                      'perfect for a summer day'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
