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
          child: Column(children: [Example1(), Example2(), Example3()]),
        ),
      ),
    );
  }
}

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Issue 1: Overflow Error, Wrap Text in Expanded
        // Text is unconsrained, leading it to go off screen
        Expanded(
          child: Text(
            'Explore the restaurant\'s delicious menu items below!',
            style: TextStyle(
              fontSize: 18.0,
              height: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}

class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Issue 2: Renderbox Not laid out error, Wrap it in Expanded
      child: ListView(
        children: [
          MenuItem('🥤', 'Soda'),
          MenuItem('🍔', 'Burger'),
        ],
      ),
    );
  }
}

class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text(
            'Pickup',
          ),
        ),
        // Issue 3: divider does not show, wrap divider in Container and give it specific height
        Container(
          height: 15.0,
          child: VerticalDivider(
            thickness: 5.0,
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Delivery',
          ),
        )
      ],
    );
  }
}
