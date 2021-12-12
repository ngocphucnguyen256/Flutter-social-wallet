import 'package:flutter/material.dart';
import './app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dak',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
      ),
      home: App(),
    );
  }
}



  //mobie

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Dak'),
  //         actions: <Widget>[
  //           IconButton(
  //             icon: Icon(
  //               Icons.menu,
  //               color: Colors.white,
  //             ),
  //             onPressed: () {
  //               // do something
  //             },
  //           )
  //         ],
  //       ),
  //       body: Dashboard());
  // }


