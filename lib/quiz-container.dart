import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<String> answerList;
  final String question;
  final Function handlePressed;
  Quiz(this.question, this.answerList, this.handlePressed);

  @override
  Widget build (BuildContext ctx) {
    return Column(
          children: [
            Question(this.question),
            ...this.answerList.map((answer) => Answer(answer, this.handlePressed)).toList()
          ]
        );
  }
}
