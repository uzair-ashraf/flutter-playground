import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<dynamic> answerList;
  final String question;
  final Function handlePressed;
  final bool isPressed;
  Quiz(this.question, this.answerList, this.handlePressed, this.isPressed);

  @override
  Widget build(BuildContext ctx) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Question(this.question),
          ...this
              .answerList
              .map((answer) => Answer(answer, this.handlePressed, isPressed))
              .toList()
        ]);
  }
}
