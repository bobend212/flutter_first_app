// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        width: 300,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectHandler,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
            foregroundColor: MaterialStateProperty.all(Colors.yellow)
          ),
        ));
  }
}
