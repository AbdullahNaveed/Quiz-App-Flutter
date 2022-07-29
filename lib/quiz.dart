import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function answerQuestion;

  Quiz(this.answerQuestion, this.questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
            questions[_questionIndex]['questionText'] as String
        ),
        ...(questions[_questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList()
      ],
    );
  }

  
}