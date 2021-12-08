import 'package:flutter/material.dart';
import 'dash_board.dart';
import './components/menu.dart';
import './components/app.dart';

const Color bgColor = Color(0xFF21252a);
const Color subBgColor = Color(0xFF343b45);
const Color lightBgColor = Color(0xFF3f4a59);

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: App());
  }
}
