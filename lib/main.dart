// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your name?',
      'answers': [
        {'text': 'Joe', 'score': 10},
        {'text': 'Bob', 'score': 0},
        {'text': 'Ed', 'score': 0},
        {'text': 'Mark', 'score': 0}
      ]
    },
    {
      'questionText': 'How old are you?',
      'answers': [
        {'text': '0-10', 'score': 10},
        {'text': '11-20', 'score': 0},
        {'text': '21-30', 'score': 0},
        {'text': '> 30', 'score': 0}
      ]
    },
    {
      'questionText': 'Where are you from?',
      'answers': [
        {'text': 'Thushima', 'score': 10},
        {'text': 'United States', 'score': 0},
        {'text': 'Pandora', 'score': 0}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quizz app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
