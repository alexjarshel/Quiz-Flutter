import 'package:flutter/material.dart';
import './questionnaire.dart';
import './result.dart';

main() {
  runApp(PergutaApp());
}

class _PergutaAppState extends State<PergutaApp> {
  var _selectedQuestion = 0;
  final _questions = const [
    {
      'text': 'What is your favorite collor?',
      'response': ['blue', 'red', 'green', 'black']
    },
    {
      'text': 'What is your favorite animal?',
      'response': ['cow', 'lion', 'cat', 'dog']
    },
    {
      'text': 'What is your favorite instrument?',
      'response': ['drum', 'eletric guitar', 'guitar', 'bass']
    }
  ];

  void _response() {
    setState(() {
      _selectedQuestion++;
    });
  }

  bool get hasQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    //for(var textResp in choices){
    //    answers.add(Answer(textResp, _response));
    //}

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questions'),
            ),
            body: hasQuestion
                ? Questionnaire(
                    questions: _questions,
                    selectedQuestion: _selectedQuestion,
                    response: _response,
                  )
                : Result()));
  }
}

class PergutaApp extends StatefulWidget {
  @override
  _PergutaAppState createState() {
    return _PergutaAppState();
  }
}
