import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerCb;
  Answer(this.answer, this.answerCb);
  @override
  Widget build(BuildContext ctx) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          this.answer,
          style: TextStyle(
            fontSize: 24,
            color: Colors.white
          )
        ),
        onPressed: this.answerCb,
        color: Colors.blue[900],
      ),
    );
  }
}
