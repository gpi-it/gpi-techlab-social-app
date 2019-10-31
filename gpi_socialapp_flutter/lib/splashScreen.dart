// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'home.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   //initState() is a method which is called once when the stateful widget is inserted in the widget tree.
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 2),
//         //Navigator.pushReplacement() move to a new screen and remove the previous screen from the navigation history stack.
//         () => Navigator.of(context).pushReplacement(MaterialPageRoute(
//             builder: (BuildContext context) => HomeScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Image.asset('assets/gplogo.png'),
//       ),
//     );
//   }
// }
