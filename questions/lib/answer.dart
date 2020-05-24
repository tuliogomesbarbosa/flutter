import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final void Function() buttonPressEvent;

  Answer(this.answer, this.buttonPressEvent);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answer,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        onPressed: buttonPressEvent,
      ),
    );
  }
}
