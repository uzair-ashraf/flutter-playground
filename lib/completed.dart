import 'package:flutter/material.dart';

class Completed extends StatelessWidget {
  final Function handlePress;
  Completed(this.handlePress);
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
          RaisedButton(
            child: Text('Try again?'),
            onPressed: this.handlePress,
          )
        ],
      ),
      // ),
    );
  }
}
