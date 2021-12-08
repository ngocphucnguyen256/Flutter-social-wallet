import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/transaction.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/components/middle_content.dart';

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
            child: MiddleContent(),
          ),
          Expanded(
            flex: 3,
            child: Transactions(),
          ),
        ],
      ),
    );
  }
}
