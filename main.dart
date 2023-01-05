import 'package:flutter/material.dart';
import 'package:guide/quiz.dart';
import 'package:guide/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Props',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Props'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final questions = const [
    {
      'questionText': 'What is your fav color?',
      'answers': [
        {'text': 'black', 'score': 12},
        {'text': 'white', 'score': 32},
        {'text': 'red', 'score': 42},
        {'text': 'green', 'score': 52},
      ]
    },
    {
      'questionText': 'What is your fav pet?',
      'answers': [
        {'text': 'bird', 'score': 12},
        {'text': 'cow', 'score': 32},
        {'text': 'cat', 'score': 42},
        {'text': 'dog', 'score': 52},
      ]
    },
    {
      'questionText': 'What is your fav clothes?',
      'answers': [
        {'text': 'shoes', 'score': 12},
        {'text': 'jeans', 'score': 32},
      ]
    },
    {
      'questionText': 'What is your fav shoes?',
      'answers': [
        {'text': 'Nike', 'score': 12},
        {'text': 'Adidas', 'score': 32},
        {'text': 'CK', 'score': 42},
      ]
    }
  ];
  int _idx = 0;
  int _totalScore = 0;

  void _answerQuestion() {
    // _totalScore += score;
    setState(() {
      _idx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: _idx < questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: questions,
                idx: _idx)
            : Column(
                children: [Result(_totalScore)],
              ),
      ),
    );
  }
}
