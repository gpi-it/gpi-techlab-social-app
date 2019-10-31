// Convention: imported external packages first then backspace then imported internal files
import 'package:flutter/material.dart';
// import 'splashScreen.dart';
import 'home.dart';

// void means that the function will not return anything
// main() is the entry point where the code is executed when the app starts
// runApp() take the widgets and draw them on the screen
//use '=>' for only one line of code
void main() => runApp(MyApp());

// A stateful widget has a state and is dynamic: for example, it can change its appearance
// in response to events triggered by user interactions or when it receives data.
// Stateful widgets subclass StatefulWidget.
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
    );
  }
}
