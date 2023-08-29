import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelect;

  Answer(this.text, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    child :ElevatedButton(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: onSelect,
      child: Text(text),
    )
    );
  }
}
