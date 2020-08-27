import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerCb;
  Answer(this.answer, this.answerCb);
  @override
  Widget build(BuildContext ctx) {
    return Container(
      child: RaisedButton(
              child: Text(this.answer),
              onPressed: this.answerCb,
            ),
    );
  }
}
