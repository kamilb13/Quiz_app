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
  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    const _questions = [
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
    // Map<String, dynamic> nic = {'nic': 'xd'};
    // print(nic);
// print(countries);
// countries.removeWhere((str){
//     return str == "Brazil";
// });
// print('---');
// print(countries);
    // final lista = ['japko', 'grusza', 1];
    List lista1 = ['japko', 'grusza'];
    lista1.add(2);
    // print(lista);
    print(lista1);
    void _answerQuestion() {
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
            backgroundColor: Colors.amber[900],
            elevation: 0,
          ),
          body: _questionIndex < _questions.length
              ? Quiz(_answerQuestion, _questions, _questionIndex)
              : Result()),
    );
  }
}
