// Convention: imported external packages first then backspace then imported internal files
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void means that the function will not return anything
// main() is the entry point where the code is executed when the app starts
// runApp() take the widgets and draw them on the screen
//use '=>' for only one line of code
void main() => runApp(MyApp());

// A stateful widget has a state and is dynamic: for example, it can change its appearance
// in response to events triggered by user interactions or when it receives data. Stateful widgets subclass StatefulWidget.
class MyApp extends StatefulWidget {
// The annotation @override points out that the function is also defined in an ancestor class, but is being redefined to do something else in the current class.
  @override

// Creates the mutable state for this widget at a given location in the tree.
  State<StatefulWidget> createState() {
// '_' means that it cannot be imported and used in another file.
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
// MyAppState depends on MyApp (sub class of?)
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

// 'const' when you are sur the value will never change runtime and compile-time (use final otherwise).
  final _questions = const [
    // Mapping
    // question 1
    {
      'questionText': 'What\'s the answer of the universe?',
      'answers': [
        {'text': '42', 'score': 42},
        {
          'text': '666',
          'score': 3,
        },
        {'text': '23657483987456748', 'score': 1},
        {'text': '8', 'score': 40000}
      ],
    },

    // question 2
    {
      'questionText':
          'Where have you been to answer SUCH NONSENSE at the question before?',
      'answers': [
        {'text': 'In Paris', 'score': 23},
        {'text': 'In dreams', 'score': 12},
        {'text': 'I refuse to answer this', 'score': 1000000}
      ],
    },

    // question 3
    {
      'questionText': 'What do you expect to do in 5 years?',
      'answers': [
        {
          'text': 'To survive until then you mean? It would be unbielivable.',
          'score': 1
        },
        {'text': 'In dreams.', 'score': 0},
        {
          'text':
              'Having few children, a wife, a house, a job and a very boring life.',
          'score': 12000
        }
      ],
    },
  ];

  // var _questions = const [] -> it is impossible to change the values of the list but still possible to change the address of the list

  void _answerQuestion(int score) {
// setState() sets properties of state object which in turn triggers the update to the UI.

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions!');
    }
  }

  @override

// build() describes the part of the user interface represented by this widget.
// BuildContext Class is nothing else but a reference to the location of a Widget within the tree structure of all the Widgets which are built.
// Every Flutter widget has an @override build() method with the argument of BuildContext .
  Widget build(BuildContext context) {
// MaterialApp is the starting point of the app, it tells Flutter that you the app is going to use Material components.
    return MaterialApp(

        // Scaffold let implement the Material standard app widgets that most application has. Such as AppBar, BottomAppBar, FloatingActionButton,
        // The Scaffold is designed to be the single top-level container for a MaterialApp although it is not necessary to nest a Scaffold.
        home: Scaffold(
      //appBar and Column are subtree of home
      appBar: AppBar(
        title: Text('GPI Social App'),
      ),
      body: _questionIndex < _questions.length
          ? // if condition is true, execute Quiz(), else execute Result()
          Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
