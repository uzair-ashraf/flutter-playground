import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(5, 20, 5, 10),
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
