import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'Yellow', 'score': 1},
          {'text': 'Green', 'score': 1},
          {'text': 'Blue', 'score': 1},
          {'text': 'Black', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'Dog', 'score': 1},
          {'text': 'Cat', 'score': 1},
          {'text': 'Elephant', 'score': 1},
          {'text': 'Horse', 'score': 1}
        ],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': [
          {'text': 'Pizza', 'score': 1},
          {'text': 'Banan', 'score': 1},
          {'text': 'Spaghetti', 'score': 1},
          {'text': 'Pasta', 'score': 1}
        ],
      },
    ];

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });
    }

    void _answerQuestion(int score) {
      _totalScore = _totalScore + score;
      if (_questionIndex < _questions.length) {
        setState(() {
          _questionIndex++;
        });
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(''),
          backgroundColor: Colors.blue[900],
          elevation: 0,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
