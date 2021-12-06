import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: subBgColor,
            child: Column(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                    child: Text('Dashboard'),
                  )),
            ]),
          ),
        ),
        Expanded(
          flex: 4,
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
    );
  }
}
