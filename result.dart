import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  Result(this.score);

  String get resultPhrase => 'your score is $score';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(resultPhrase)],
      ),
    );
  }
}
