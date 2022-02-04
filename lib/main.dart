// ignore_for_file: prefer_const_constructors, avoid_print, must_be_immutable

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {'questionText': 'What is your name?', 'answers': ['Joe', 'Bob', 'Frank', 'Nobody', 'Joel']},
      {'questionText': 'How old are you?', 'answers': ['0-10', '11-20', '21-30', '> 31']},
      {'questionText': 'Where are you from?', 'answers': ['Poland', 'United States', 'Pandora', 'Thushima']}
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('quizz app'),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
