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
          child: Column(children: [
            // Examples are put here!
            Example1(),
            Example2(),
            Example3(),
          ]),
        ),
      ),
    );
  }
}

// Fixed Issue 1: Overflow Error, Wrap Text in Expanded
// Cause: Text was unconsrained, leading it to go off screen
// Solution: Wrap Text in Exapnded
class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Explore the restaurant\'s delicious menu items below!',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}

// Fixed Issue 2: RenderBox not laid out error
// Cause : ListView was taking up infinity height so program couldn't determine its size
// Solution: Wrap ListView in Expanded
class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MenuItem('🍔', 'Burger'),
          MenuItem('🍟', 'Fries'),
          MenuItem('🥤', 'Soda'),
        ],
      ),
    );
  }
}

// Fixed Issue 3: VerticalDivider not shown
// Cause: Vertical Divider height was 0 because Row's height was unconstrained
// Solution: Wrap Row in SizedBox and give it a height
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
