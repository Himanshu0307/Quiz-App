import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _answerChosen;
  final String ans;
  Answer(this._answerChosen, this.ans);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: _answerChosen,
        child: Text(ans),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
