import 'package:flutter/material.dart';

import './completed.dart';
import './quiz-container.dart';
void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  int _questionIndex = 0;
  int _totalScore = 0;
  bool _isPressed = false;
  final List<Map> _questionKey = [
    {
      'question': 'What is your name?',
      'answers': [
        {'text': 'Uzair', 'isCorrect': true},
        {'text': 'Rosey', 'isCorrect': false},
        {'text': 'Chris', 'isCorrect': false}
      ]
    },
    {
      'question': 'What is your age?',
      'answers': [
        {'text': '42', 'isCorrect': false},
        {'text': '26', 'isCorrect': true},
        {'text': '12', 'isCorrect': false}
      ]
    },
    {
      'question': 'Who is your waifu?',
      'answers': [
        {'text': 'Taiga', 'isCorrect': false},
        {'text': 'Chika', 'isCorrect': true},
        {'text': 'Hinata', 'isCorrect': false}
      ]
    },
  ];

  void _handlePressed(bool isCorrect) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        _questionIndex++;
        _isPressed = false;
        if(isCorrect) _totalScore++;
      });
    });
    setState(() => this._isPressed = true);
    print('Pressed!');
  }
  void _handleCompletedSurvey() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzerino'),
        ),
        body: this._questionKey.length == this._questionIndex
        ? Completed(this._handleCompletedSurvey, this._totalScore, this._questionKey.length)
        : Quiz(
          this._questionKey[this._questionIndex]['question'],
          this._questionKey[this._questionIndex]['answers'],
          this._handlePressed,
          this._isPressed
        )
      ),
    );
  }
}
