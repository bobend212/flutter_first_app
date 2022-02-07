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
      'answers': ['Joe', 'Bob', 'Frank', 'Nobody', 'Joel']
    },
    {
      'questionText': 'How old are you?',
      'answers': ['0-10', '11-20', '21-30', '> 31']
    },
    {
      'questionText': 'Where are you from?',
      'answers': ['Poland', 'United States', 'Pandora', 'Thushima']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < _questions.length) {
      print('we have more quests');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quizz app'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
            : Result(),
      ),
    );
  }
}
