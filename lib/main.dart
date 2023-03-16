import 'package:flutter/material.dart';
// import 'package:sample1/answer.dart';
// import 'package:sample1/question.dart';
import 'package:sample1/quiz.dart';
import 'package:sample1/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"Text": "Black", "score": 10},
        {"Text": "Red", "score": 5},
        {"Text": "Baby Blue", "score": 3},
        {"Text": "White", "score": 7},
      ],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"Text": "Rabbit", "score": 3},
        {"Text": "Bear", "score": 6},
        {"Text": "Elephant", "score": 7},
        {"Text": "Lion", "score": 10},
      ],
    },
    {
      "questionText": "What's your favorite pat?",
      "answers": [
        {"Text": "Rat", "score": 3},
        {"Text": "Bird", "score": 6},
        {"Text": "Cat", "score": 10},
        {"Text": "Dog", "score": 7},
      ],
    },
    {
      "questionText": "What's your favorite food?",
      "answers": [
        {"Text": "Pizza", "score": 10},
        {"Text": "Burger", "score": 3},
        {"Text": "Dosa", "score": 7},
        {"Text": "Pav Bhaji", "score": 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totleScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totleScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totleScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);

      if (_questionIndex < _questions.length) {
        print("next");
      }
    });

    // debugPrint('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totleScore,_resetQuiz),
      ),
    );
  }
}
