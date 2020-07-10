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
          title: Text('Menu Demo'),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // Insert/delete code here
              Example1(),
            ],
          ),
        ),
      ),
    );
  }
}

// Issue 1: Overflow Error
class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Explore the restaurant\'s delicious menu items below!',
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}

// Issue 2: Viewport was given unbounded height Error
class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MenuItem('🍔', 'Burger'),
        MenuItem('🍟', 'Fries'),
        MenuItem('🥤', 'Soda'),
      ],
    );
  }
}

// Issue 3: VerticalDivider not shown
class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
