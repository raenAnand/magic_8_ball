import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallMain(),
      ),
    );

class BallMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything',textAlign: TextAlign.center,)),
        backgroundColor: Colors.blue[900],
      ),
      body: ChangeBall(),
    );
  }
}
class ChangeBall extends StatefulWidget {
  @override
  _ChangeBallState createState() => _ChangeBallState();
}

class _ChangeBallState extends State<ChangeBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          ballNumber = Random().nextInt(5) + 1;
        });
      },

      child: Center(
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}