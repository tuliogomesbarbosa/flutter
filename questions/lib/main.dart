import 'package:flutter/material.dart';
import 'package:questions/questionnaire.dart';
import 'package:questions/result.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'text': "What's your favourite color?",
      'answers': [
        {'value': 'Black', 'score': 10},
        {'value': 'Red', 'score': 5},
        {'value': 'Green', 'score': 3},
        {'value': 'White', 'score': 1}
      ],
    },
    {
      'text': "What's your favourite animal?",
      'answers': [
        {'value': 'Rabbit', 'score': 10},
        {'value': 'Snake', 'score': 5},
        {'value': 'Elephant', 'score': 3},
        {'value': 'Lion', 'score': 1},
      ],
    },
    {
      'text': "What's your favourite instructor?",
      'answers': [
        {'value': 'Maria', "score": 10},
        {'value': 'João', 'score': 5},
        {'value': 'Pedro', 'score': 3},
        {'value': 'Leo', 'score': 1},
      ],
    }
  ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
      print(_selectedQuestion);
    }
    print(_totalScore);
  }

  void _reset() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questions'),
          ),
          body: hasSelectedQuestion
              ? Questionnaire(
                  questions: _questions,
                  buttonPressedEvent: _answer,
                  selectedQuestion: _selectedQuestion,
                )
              : Result(_totalScore, _reset)),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  State<QuestionApp> createState() {
    return _QuestionAppState();
  }
}
