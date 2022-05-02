import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  var questions = [
    'colors',
    'animals',
  ];

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
