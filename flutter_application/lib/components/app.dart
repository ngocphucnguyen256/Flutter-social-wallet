import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/main.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var flex2 = 1.5;
    return Container(
      color: bgColor,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Menu(),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text('Hello World'),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text('Hello World'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
