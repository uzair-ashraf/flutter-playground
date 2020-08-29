import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  final Function handlePress;
  final int totalScore;
  final int questionCount;
  Completed(this.handlePress, this.totalScore, this.questionCount);
  String get score {
    return this.totalScore.toString() + '/' + this.questionCount.toString();
  }

  @override
  Widget build(BuildContext ctx) {
    return Container(
      // width: double.infinity,
      // height: double.infinity,
      margin: EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Thank you for completing the survey!',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'You scored a ' + score,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
            width: double.infinity,
            child: RaisedButton(
              child: Text('Try Again?',
                  style: TextStyle(fontSize: 24, color: Colors.white)),
              onPressed: this.handlePress,
              color: Colors.blue[400],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
