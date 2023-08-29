import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Questionnaire extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function() response;

  bool get hasQuestion {
    return selectedQuestion < questions.length;
  }

  Questionnaire({
    required this.questions,
    required this.selectedQuestion,
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    List<String> choices =
        hasQuestion ? questions[selectedQuestion].cast()['response'] : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'].toString()),
        ...choices.map((t) => Answer(t, response)).toList()
      ],
    );
  }
}
