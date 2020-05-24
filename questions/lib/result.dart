import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final void Function() onResetEvent;

  Result(this.finalScore, this.onResetEvent);

  String get resultMessage {
    if (finalScore < 8) {
      return "Congratulations!";
    } else if (finalScore < 12) {
      return "You're good!";
    } else if (finalScore < 16) {
      return "Impressive!";
    } else {
      return "Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultMessage,
            style: TextStyle(fontSize: 28),
          ),
        ),
        FlatButton(
          child: Text(
            "Reset?",
            style: TextStyle(fontSize: 18),

          ),
          textColor: Colors.blue,
          onPressed: onResetEvent,
        )
      ],
    );
  }
}
