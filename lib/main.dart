import 'package:first_package_Quiz_App/quiz.dart';
import 'package:first_package_Quiz_App/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _totScore = 0;
  void reset() {
    _index = 0;
    _totScore = 0;
    setState(() {});
  }

  void _answerChosen(int score) {
    print('Answer Chosen!');

    setState(() {
      _index = _index + 1;
    });

    _totScore += score;
    print(_totScore);
  }

  var questions = [
    {
      'Question': 'What\'s your Favourite Colour',
      'Answer': [
        {'option': 'Black', 'score': 10},
        {'option': 'Red', 'score': 5},
        {'option': 'Blue', 'score': 2},
        {'option': 'Green', 'score': 1}
      ]
    },
    {
      'Question': 'What\'s  your Favorite Animal',
      'Answer': [
        {'option': 'Panda', 'score': 2},
        {'option': 'Lion', 'score': 10},
        {'option': 'Tiger', 'score': 7},
        {'option': 'Giraffe', 'score': 1},
      ]
    },
  ];

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questions.length > _index
            ? Quiz(_answerChosen, questions, _index)
            : Result(_totScore, reset),
      ),
    );
  }
}
