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
              // Error 1: Overflow, surround text with expanded to fix error
              Text(
                  'Welcome to one of the best virtual restaurants you\'ll ever visit'),
            ]),
            // does text overflow to the widget direction? since it's column, it would overflow to the bottom?
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(children: [
                Text('Icon'),
                // Error 2: not sure how to fix this problem, divider not showing
                VerticalDivider(),
                Text('Description'),
              ]),
            ),
            // Error #3: Wrap ListView with Expanded to fix RenderBox not laid out error
            ListView(
              children: [
                createMenuItem(
                    Icon(Icons.local_drink, color: Colors.blue), 'Water'),
                createMenuItem(
                    Icon(Icons.fastfood, color: Colors.blue),
                    'A delicious burger entrée with chilled soda on the side'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
