import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Done';
    if (resultScore <= 8) {
      resultText = 'Nice';
    } else if (resultScore <= 12) {
      resultText = 'You\'re alright';
    } else if (resultScore <= 16) {
      resultText = 'What you doing';
    } else {
      resultText = 'Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
