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
      leading: Text(icon,
          style: TextStyle(
            fontSize: 30.0,
          )),
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
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(children: [
                // Error 1: Overflow, surround Text with expanded to fix error
                Expanded(
                  child: Text(
                      'Welcome to Dasheats, a restaurant providing fast, '
                      'affordable, and quality experience. '
                      'Explore the delicious menu items below.',
                      style: TextStyle(fontSize: 15.0,)),
                ),
              ]),
            ),
            // Error 2: RenderBox not laid out error, surround ListView with Expanded to fix error
            Expanded(
              child: ListView(
                children: [
                  MenuItem('🥤', 'Soda'),
                  MenuItem('🍔', 'Burgers'),
                  MenuItem('🍟', 'Fries'),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      'Pickup',
                    ),
                  ),
                  // Error 3: Unable to see the VerticalDivider despite being in the code
                  // The divider does not cause any error messages
                  Container(child: VerticalDivider(thickness: 2.0,), height: 15.0,),
                  FlatButton(
                    onPressed: null,
                    child: Text(
                      'Delivery',
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
