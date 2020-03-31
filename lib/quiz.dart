import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function anserQn;
  final int indexQn;
  Quiz(this.anserQn, this.questions, this.indexQn);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[indexQn]['question']),
          ...(questions[indexQn]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(() => anserQn(answer['score']), answer['text']);
          }).toList(),
    ],);
  }
}