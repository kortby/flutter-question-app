import 'package:flutter/material.dart';
import 'package:guide/answer.dart';
import 'package:guide/question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerQuestion;
  final List<dynamic> questions;
  final int idx;

  const Quiz({
    required this.answerQuestion,
    required this.questions,
    required this.idx,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question(
          questions[idx]['questionText'] as String,
        ),
        for (var answer in questions[idx]['answers'] as List<dynamic>)
          Answer(
            answerQuestion,
            answer['text'] as String,
          ),
      ],
    ));
  }
}
