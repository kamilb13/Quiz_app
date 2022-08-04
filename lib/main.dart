import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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

//___________________________
// class Student {
//   String name;
//   int rollno;
//   Student({required this.name, required this.rollno});
// }

// List<Student> students = [
//    Student(name: "John", rollno: 23),
//    Student(name: "Max", rollno: 10)
// ];
// List<String> countries = ["Canada", "Brazil", "USA"];

//___________________________

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
    // Map<String, dynamic> nic = {'nic': 'xd'};
    // print(nic);
// print(countries);
// countries.removeWhere((str){
//     return str == "Brazil";
// });
// print('---');
// print(countries);
    // final lista = ['japko', 'grusza', 1];
    // List lista1 = ['japko', 'grusza'];
    // lista1.add(2);
    // print(lista.runtimeType);
    // print(lista1.runtimeType);

    void _resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
      });

      print('ogórek');
      print(_questionIndex);
      print(_totalScore);
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
