// Convention: imported packages first then backspace then imported files
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
// MyAppState depends on MyApp
  var _questionIndex = 0;

  void _answerQuestion() {
// setState() sets properties of state object which in turn triggers the update to the UI.
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override

// build() describes the part of the user interface represented by this widget.
// BuildContext Class is nothing else but a reference to the location of a Widget within the tree structure of all the Widgets which are built.
// Every Flutter widget has an @override build() method with the argument of BuildContext .
  Widget build(BuildContext context) {
// 'const' when you are sur the value will never change runtime and compile-time (use final otherwise).
    const questions = [
      {
        'questionText': 'What\'s the answer of the universe?',
        'answers': ['42', '666', '23657483987456748'],
      }, //Map

      {
        'questionText':
            'Where have you been to answer SUCH NONSENSE at the question before?',
        'answers': ['In Paris', 'In dreams', 'I refuse to answer this'],
      },

      {
        'questionText': 'What do you expect to do in 5 years?',
        'answers': [
          'To survive until then you mean? It would be unbielivable.',
          'In dreams.',
          'Having few children, a wife, a house, a job and a very boring life.'
        ],
      },
    ];

    // var questions = const [] -> it is impossible to change the values of the list but still possible to change the address of the list

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('GPI Social App'),
            ),
            body: Column(
              children: [
                Question(questions[_questionIndex]['questionText']),

                // transform the list of Strings into a list of Widgets. The Map methods execute a function on every element in the list.
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  /// ... put the values of a list out of separate values from a list
                  return Answer(_answerQuestion,
                      answer); // return a new list (of Widgets), create a new Answer widget, forward the answer of the list into the Answer() widget                })
                }).toList() // transform to a list
              ],
            ) // <Widget>[] hold a list of Widgets
            ));
  }
}
