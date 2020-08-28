import 'package:flutter/material.dart';

import './completed.dart';
import './quiz-container.dart';
void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int questionIndex = 0;
  final List<Map> questionKey = [
    {
      'question': 'What is your name?',
      'answers': [
        'Uzair',
        'Rosey',
        'Chris'
      ]
    },
    {
      'question': 'What is your age?',
      'answers': [
        '26',
        '22',
        '45'
      ]
    },
    {
      'question': 'Who is your waifu?',
      'answers': [
        'Taiga',
        'Shinobu',
        'Chika'
      ]
    },
  ];

  void _handlePressed() {
    setState(() => questionIndex++);
    print('Pressed!');
  }
  void _handleCompletedSurvey() {
    setState(() => questionIndex = 0);
  }
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzerino'),
        ),
        body: this.questionKey.length == this.questionIndex
        ? Completed(this._handleCompletedSurvey)
        : Quiz(
          this.questionKey[this.questionIndex]['question'],
          this.questionKey[this.questionIndex]['answers'],
          this._handlePressed
        )
      ),
    );
  }
}
