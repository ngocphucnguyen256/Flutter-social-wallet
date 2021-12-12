import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/middle_content.dart';
import 'package:flutter_application/components/transaction.dart';

import '../constants.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text("Dak"),
          backgroundColor: bgColor,
        ),
        drawer: Drawer(
          child: Menu(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: MiddleContent(),
              ),
              Expanded(
                flex: 3,
                child: Transactions(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
