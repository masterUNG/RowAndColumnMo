import 'package:flutter/material.dart';

class ShowRow extends StatelessWidget {
  Widget showText2() {
    return Text(
      'TextType Method',
      style: TextStyle(fontSize: 20.0),
    );
  }

  Widget showIconAndroid() {
    return Icon(Icons.android);
  }

  Widget showIconFastFood() {
    return Icon(Icons.fastfood);
  }

  @override
  Widget build(BuildContext context) {
    Widget showText = Text('This is body');

    return Scaffold(
        appBar: AppBar(
          title: Text('App Bar Show Row'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            showIconAndroid(),
            showText2(),
            showIconFastFood()
          ],
        ),
      );
  }
}
