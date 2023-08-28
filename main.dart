import 'package:flutter/material.dart';

main() {
  runApp(PergutaApp());
}

class _PergutaAppState extends State<PergutaApp> {
  var _selectedQuestion = 0;

  void _response() {
    setState(() {
      if (_selectedQuestion<1){
         _selectedQuestion++;
      }
     
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'What is your favorite collor?',
      'What is your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: Column(
        children: [
          Text(questions[_selectedQuestion]),
          ElevatedButton(
            onPressed: _response,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: _response,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: _response,
            child: Text('Answer 3'),
          )
        ],
      ),
    ));
  }
}

class PergutaApp extends StatefulWidget {
  
  @override
  _PergutaAppState createState(){
    return _PergutaAppState();
  }
}
