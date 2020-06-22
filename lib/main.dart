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
            // Replace the examples here
            Example1(), Example2(), Example3(),
          ]),
        ),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        children: [
          // Issue 1: Overflow Error, Wrap Text in Expanded
          // Text is unconsrained, leading it to go off screen
          Expanded(
            child: Text(
              'Explore the restaurant\'s delicious menu items below!',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MenuItem('🥤', 'Soda'),
          MenuItem('🍔', 'Burger'),
          MenuItem('🍟', 'Fries'),
        ],
      ),
    );
  }
}

class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed: () {
              print('Pickup button pressed.');
            },
            child: Text(
              'Pickup',
            ),
          ),
          VerticalDivider(
            thickness: 5.0,
          ),
          RaisedButton(
            onPressed: () {
              print('Delivery button pressed.');
            },
            child: Text(
              'Delivery',
            ),
          )
        ],
      ),
    );
  }
}
