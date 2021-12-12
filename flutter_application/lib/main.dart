import 'package:flutter/material.dart';
import '../helper/responsive.dart';
import './screens/desktop.dart';
import './screens/mobile.dart';
import './screens/tablet.dart';

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
      home: Container(
        child: Responsive(
          key: const Key('App'),
          mobile: Mobile(),
          tablet: Tablet(),
          desktop: Desktop(),
        ),
      ),
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


