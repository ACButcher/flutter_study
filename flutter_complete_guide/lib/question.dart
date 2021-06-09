import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText; //value will never change after initialization

  Question(this.questionText); /* constructor*/

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //full width of device
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
