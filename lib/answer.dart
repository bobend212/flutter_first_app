// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(5),
        width: 300,
        child: ElevatedButton(
          child: Text('aaaa'),
          onPressed: selectHandler,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue[400]),
            foregroundColor: MaterialStateProperty.all(Colors.yellow)
          ),
        ));
  }
}
