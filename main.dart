import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

main() {
  runApp(PergutaApp());
}

class _PergutaAppState extends State<PergutaApp> {
  var _selectedQuestion = 0;

  void _response() {
    setState(() {
      if (_selectedQuestion < 0) {
        _selectedQuestion++;
      } else if (_selectedQuestion == 1) {
        _selectedQuestion--;
      }
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[_selectedQuestion]['text'].toString()),
          Answer('Answer 1', _response),
          Answer('Answer 2', _response),
          Answer('Answer 3', _response),
        ],
      ),
    ));
  }
}

class PergutaApp extends StatefulWidget {
  @override
  _PergutaAppState createState() {
    return _PergutaAppState();
  }
}
