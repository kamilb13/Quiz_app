import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _answerQuestion;
  final String answerText;

  Answer(this._answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber[900],
        textColor: Colors.white,
        onPressed: _answerQuestion,
        child: Text(answerText),
      ),
    );
  }
}
