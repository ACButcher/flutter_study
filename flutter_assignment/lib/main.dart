import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String _displayText = 'Title 1';
  bool buttonBool = true;

  void _switchText() {
    setState(() {
      buttonBool = !buttonBool;
      _displayText = (buttonBool) ? 'Title 1' : 'Title 2';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: MyText(_displayText),
        ),
        body: Center(
          child: FlatButton(
            child: Text('Switch'),
            onPressed: _switchText,
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  final String displayText;

  MyText(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Text(displayText);
  }
}
