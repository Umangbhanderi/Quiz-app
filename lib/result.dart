import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key, required this.resultScore});

  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler,{super.key});

  String get resultPharse {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You Are so bad!";
    } else if (resultScore <= 18) {
      resultText = "You are ... strenge!";
    } else if (resultScore <= 26) {
      resultText = "pretty Likeable!";
    } else {
      resultText = "You are awesome and innocent";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPharse,
            style:const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child:const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}


// 54 video