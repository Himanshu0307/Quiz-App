import 'package:first_package_Quiz_App/answer.dart';
import 'package:first_package_Quiz_App/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final Function _answerChosen;
  final List<Map<String, Object>> questions;
  final int _index;
  Quiz(this._answerChosen, this.questions, this._index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[_index]['Question']),
        ...(questions[_index]['Answer'] as List<Map<String, Object>>)
            .map((e) => Answer(() => _answerChosen(e['score']), e['option']))
            .toList()
      ],
    );
  }
}
