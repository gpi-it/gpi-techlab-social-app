import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function
      selectHandler; //Function means that the value store in selectHandler must be a function and Final means that the function cannot be changed
  final String answerText; // store the answer text value

  Answer(
      this.selectHandler, //this.selectHandler stores the pointer of the event
      this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
