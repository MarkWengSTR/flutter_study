import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  var questions = [
    'colors',
    'animals',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My first App')),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
              child: const Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(
              child: const Text('Answer 2'),
              onPressed: () => print("use anonymous function")),
          RaisedButton(
              child: const Text('Answer 3'),
              onPressed: () {
                print("use anonymous function 2");
              }),
        ]),
      ),
    );
  }
}
