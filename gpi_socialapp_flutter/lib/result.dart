import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 500) {
      resultText = 'WTF';
    } else if (resultScore > 500 && resultScore <= 100000) {
      resultText = 'Wow, you\'r creepy';
    } else {
      resultText = 'Ok, you\'r in';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        )),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.red,
          onPressed: resetQuiz,
        )
      ],
    );
  }
}
