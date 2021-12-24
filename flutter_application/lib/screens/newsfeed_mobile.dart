import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/middle_content.dart';
import 'package:flutter_application/components/newsfeed_content.dart';
import '../constants.dart';

class NewsfeedMobile extends StatefulWidget {
  const NewsfeedMobile({Key? key}) : super(key: key);

  @override
  State<NewsfeedMobile> createState() => _NewsfeedMobileState();
}

class _NewsfeedMobileState extends State<NewsfeedMobile> {
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
                child: NewsfeedContent(),
              ),
              // Expanded(
              //   flex: 2,
              //   child: Transactions(),
              // ),
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
