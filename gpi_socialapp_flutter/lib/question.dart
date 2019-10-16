import 'package:flutter/material.dart';

// A stateless widget never changes as it does not have a state. Icon, IconButton, and Text are examples of stateless widgets.
// Stateless widgets subclass StatelessWidget.
class Question extends StatelessWidget {
  final String
      questionText; //Final means that questionText value cannot change a second time

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}
