import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _totScore;
  final Function reset;
  Result(this._totScore, this.reset);
  String get result {
    String resultText;
    if (_totScore <= 8)
      resultText = 'You are likeable';
    else if (_totScore <= 13)
      resultText = 'You are Good';
    else if (_totScore <= 18)
      resultText = 'You are Strange';
    else
      resultText = 'You are bad';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            result,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Reset'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
