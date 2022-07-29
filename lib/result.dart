import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "You did it!";

    if(totalScore >= 24) {
      resultText = "Your result is more than 80%";
    }
    else if(totalScore >= 15) {
      resultText = "Your result is more than 50%";
    }
    else {
      resultText = "Your result is less than 50%";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
        width: double.infinity,
          margin: const EdgeInsets.all(40),
          child: Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          child: const Text("Reset Quiz"),
          onPressed: resetQuiz,
          color: Colors.teal,
          textColor: Colors.white,
        ),
      ],
    );
  }


}