import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map answer;
  final Function answerCb;
  final bool isPressed;
  Answer(this.answer, this.answerCb, this.isPressed);
  @override
  Widget build(BuildContext ctx) {
    final String answerText = this.answer['text'];
    final bool isCorrect = this.answer['isCorrect'];
    var color;
    if(this.isPressed) {
      color = isCorrect ? Colors.green[900] : Colors.red[900];
    } else {
      color = Colors.blue[900];
    }
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          )
        ),
        onPressed: () => this.answerCb(isCorrect),
        color: color,
      ),
    );
  }
}
