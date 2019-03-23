import 'package:flutter/material.dart';
import 'screens/show_row.dart';
import 'screens/show_column.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showText = Text('Main Page');

  Widget showText2(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
    );
  }

  Widget rowButton(BuildContext context, String name, int number) {
    return RaisedButton(
      child: Text('Show Row'),
      onPressed: () {
        print('You Click Show Row');
        var rowRoute =
            new MaterialPageRoute(builder: (BuildContext context) => ShowRow());
        Navigator.of(context).push(rowRoute);
      },
    );
  }

  Widget columnButton(BuildContext context) {
    return RaisedButton(
      child: Text('Show Column'),
      onPressed: () {
        print('You Click Show Column');
        var columnRoute = new MaterialPageRoute(
            builder: (BuildContext context) => ShowColumn());
            Navigator.of(context).push(columnRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row And Column'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.only(top: 50.0),
        alignment: Alignment.topCenter,
        color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            showText2('Please Click Button'),
            rowButton(context, 'Doramon', 123),
            columnButton(context)
          ],
        ),
      ),
    );
  }
}
