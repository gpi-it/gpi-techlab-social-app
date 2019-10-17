import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questionText']),

      // transform the list of Strings into a list of Widgets. The Map method iterates a function on every element in the list.
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        /// '...' put the values from list out to separate values
        return Answer(
            () => answerQuestion(answer['score']),
            answer[
                'text']); // return a new list (of Widgets), create a new Answer widget, forward the answer of the list into the Answer() widget })
      }).toList() // transform to a list
    ]);
  }
}
