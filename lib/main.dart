import 'package:flutter/material.dart';

void main() {
  runApp(Menu());
}

class MenuItem extends StatelessWidget {
  final String icon;
  final String itemText;
  const MenuItem(this.icon, this.itemText);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        icon,
        style: TextStyle(
          fontSize: 30.0,
        ),
      ),
      title: Text(itemText),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Demo: Solution'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              children: [
                // Issue 1: Overflow error fix by wrapping Text with Expanded
                // Issue caused because Text is unconstrained, so it goes off the screen
                Text(
                  'Explore our restaurant\'s delicious menu items!',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  MenuItem('🥤', 'Soda'),
                  MenuItem('🍔', 'Burger'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Pickup',
                  ),
                ),
                VerticalDivider(),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Delivery',
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
