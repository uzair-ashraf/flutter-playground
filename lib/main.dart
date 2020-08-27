import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  List<Widget> generatesQuestionList() {
    List<Widget> result = [];
    Question question = Question(this.questionKey[this.questionIndex]['question']);
    result.add(question);
    List<String> currentAnswers = this.questionKey[this.questionIndex]['answers'];
    for(int i = 0; i < currentAnswers.length; i++) {
      Answer answer = Answer(currentAnswers[i], this._handlePressed);
      result.add(answer);
    }
    return result;
  }
  @override
  Widget build(BuildContext ctx) {
    List<String> questions = ['What is your name?', 'How old are you?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzerino'),
        ),
        body: Column(
          children: this.generatesQuestionList()
        ),
      ),
    );
  }
}
