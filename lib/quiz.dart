import 'package:flutter/material.dart';
import 'package:sample1/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key,
  required this.questions,
  required this.questionIndex,
  required this.answerQuestion});


  final List<Map<String,Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                    questions[questionIndex]['questionText'].toString(),
                  ),
                  ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                      .map((answer) {
                    return Answer(() => answerQuestion(answer["score"]), answer["Text"] as String);
                  }).toList()
                ],
              );
  }
}