import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          backgroundColor: Colors.black38,
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Ball(),
      ),
    );
  }
}

//statefull widget
//
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int changePicVar = 1;
  int changePIC() {
    //change the pic when called
    changePicVar = Random().nextInt(5) + 1;
    return changePicVar;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //make the widget interactive
        child: TextButton(
            onPressed: () {
              setState(() {
                //call a function to answer my life questions
                changePIC();
                print(changePicVar);
              });
            },
            child: Image.asset('images/ball$changePicVar.png')),
      ),
    );
  }
}
