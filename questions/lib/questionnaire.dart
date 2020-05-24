import 'package:flutter/material.dart';
import 'package:questions/answer.dart';
import 'package:questions/question.dart';

class Questionnaire extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final void Function(int) buttonPressedEvent;
  final int selectedQuestion;

  Questionnaire(
      {@required this.questions,
      @required this.buttonPressedEvent,
      @required this.selectedQuestion});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answerValues =
        questions[selectedQuestion]["answers"];
    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]["text"]),
        ...answerValues.map((answer) {
          return Answer(
              answer["value"], () => buttonPressedEvent(answer["score"]));
        }).toList()
      ],
    );
  }
}
