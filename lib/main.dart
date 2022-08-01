import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './answer.dart';

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
  int _questionIndex = 0;
  int dupa = 0;

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Yellow', 'Green', 'Blue', 'Black'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Elephant', 'Horse'],
      },
      {
        'questionText': 'What\'s your favorite food?',
        'answers': ['Pizza', 'Banan', 'Spaghetti', 'Pasta'],
      },
    ];

    void _answerQuestion() {
      if (_questionIndex < questions.length) {
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
          backgroundColor: Colors.amber[900],
          elevation: 0,
        ),
        body: _questionIndex < questions.length
            ? 
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
