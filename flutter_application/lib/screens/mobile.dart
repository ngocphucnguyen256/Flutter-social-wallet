import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/transaction.dart';
import 'package:flutter_application/components/middle_content.dart';
import '../constants.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      // child: Row(
      //   children: <Widget>[
      //     Expanded(
      //       flex: 2,
      //       child: Menu(),
      //     ),
      //     Expanded(
      //       flex: 6,
      //       child: MiddleContent(),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Transactions(),
      //     ),
      //   ],
      // ),
    );
  }
}
