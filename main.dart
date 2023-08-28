import 'package:flutter/material.dart';

main() {
  runApp(PergutaApp());
}

class PergutaAppState extends State<PergutaApp> {
  var selectedQuestion = 0;

  void response() {
    setState(() {
      if (selectedQuestion<1){
         selectedQuestion++;
      }
     
    });
    print(selectedQuestion);
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
          Text(questions[selectedQuestion]),
          ElevatedButton(
            onPressed: response,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: response,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: response,
            child: Text('Answer 3'),
          )
        ],
      ),
    ));
  }
}

class PergutaApp extends StatefulWidget {
  
  @override
  State<PergutaApp> createState(){
    return PergutaAppState();
  }
}
