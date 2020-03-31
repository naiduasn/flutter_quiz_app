import 'package:flutter/material.dart';
import 'package:hello_world_mar28/answer.dart';
import 'package:hello_world_mar28/quiz.dart';
import 'package:hello_world_mar28/result.dart';
import './question.dart';

void main() {
  runApp(MyHwApp());
}

class MyHwApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHwAppState();
  }
}

class _MyHwAppState extends State<MyHwApp> {
  var _indexQn = 0;
  var _totalScore = 0;
  final questions = const [
    {
      'question': 'what is fav color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 80},
        {'text': 'red', 'score': 40}
      ],
    },
    {
      'question': 'what is fav animal?',
      'answers': [
        {'text': 'tiger', 'score': 10},
        {'text': 'ballu', 'score': 80},
        {'text': 'lion', 'score': 40}
      ],
    },
    {
      'question': 'what is fav cricketer?',
      'answers': [
        {'text': 'kohli', 'score': 10},
        {'text': 'sachin', 'score': 80},
        {'text': 'dhoni', 'score': 40}
      ],
    },
  ];
  void _anserQn(int score) {
    _totalScore += score;
    if (_indexQn < questions.length) {
      setState(() {
        _indexQn = _indexQn + 1;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _indexQn = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Title'),
        ),
        body: _indexQn < questions.length
            ? Quiz(_anserQn, questions, _indexQn)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
