import 'package:flutter/material.dart';

class ShowColumn extends StatelessWidget {
  Widget showStudent1() {
    return Image.asset('images/student1.png');
  }

  Widget showStudent2() {
    return Image.asset('images/student2.png');
  }

  Widget showStudent3() {
    return Image.asset('images/student3.png');
  }

  Widget backButton(BuildContext context) {
    return RaisedButton(
      child: Text('Back'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Bar Column'),
        ),
        body: Container(alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              showStudent1(),
              showStudent2(),
              showStudent3(),
              backButton(context)
            ],
          ),
        ));
  }
}
