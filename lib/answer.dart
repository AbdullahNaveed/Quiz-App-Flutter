import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child:
        RaisedButton(
          child: Text(answerText),
          onPressed: (){
            selectHandler();
          },
          color: Colors.teal,
          textColor: Colors.white,
        ),

    );
  }

}