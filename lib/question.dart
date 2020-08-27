import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(12.5),
      child: Text(
      question,
      style: TextStyle(
        fontSize: 28
      ),
      textAlign: TextAlign.center,
    ),
    );
  }
}
