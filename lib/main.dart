import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyFirstFlutterApp());
}

class MyFirstFlutterApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _MyFirstFlutterState();
  }
}

class _MyFirstFlutterState extends State<MyFirstFlutterApp> {

  var _questionIndex = 0;
  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {

    var questions = [
      {
        'questionText': "What's your favourite color?",
        'answers': [{"text":"White", "score":7}, {"text":"Red", "score":10}, {"text":"Black", "score":5}]
      },
      {
        'questionText': "What's your favourite animal?",
        'answers': [{"text":"Leopard", "score":5}, {"text":"Lion", "score":7}, {"text":"Phoenix", "score":10}]
      },
      {
        'questionText': "Who's your Favourite Person?",
        'answers': [{"text":"Abdullah", "score":10}, {"text":"Abdullah", "score":10}, {"text":"Abdullah", "score":10}, {"text":"Abdullah", "score":10}]
      },
    ];

    void answerQuestion(int score) {
      setState(() {
        //if(_questionIndex < questions.length-1) {
          _questionIndex += 1;
          _totalScore += score;
        //}
      });
      //print(_questionIndex);
    }

    void resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Quiz App'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _questionIndex < questions.length ?
          Quiz(answerQuestion, questions, _questionIndex) : Result(_totalScore, resetQuiz)
      ),
    );
  }
}
