import 'package:flutter/material.dart';
import 'package:flutter_app/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    //throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Pasta', 'score': 30},
        {'text': 'Burger', 'score': 10},
        {'text': 'Pizza', 'score': 20},
        {'text': 'Steak', 'score': 50}
      ]
    },
    {
      'questionText': 'What\'s your fav Color',
      'answers': [
        {'text': 'Black', 'score': 30},
        {'text': 'Pink', 'score': 20},
        {'text': 'Red', 'score': 40},
        {'text': 'Blue', 'score': 50}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('More Questions :D');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
