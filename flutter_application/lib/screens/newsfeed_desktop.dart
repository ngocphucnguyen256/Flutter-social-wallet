import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/newsfeed_content.dart';
import 'package:flutter_application/components/newsfeed_side.dart';
import '../constants.dart';

class NewsfeedDesktop extends StatefulWidget {
  const NewsfeedDesktop({Key? key}) : super(key: key);

  @override
  State<NewsfeedDesktop> createState() => _NewsfeedDesktopState();
}

class _NewsfeedDesktopState extends State<NewsfeedDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(margin: EdgeInsets.all(18), child: Menu()),
            ),
            Expanded(
              flex: 6,
              child: NewsfeedContent(),
            ),
            Expanded(
              flex: 2,
              child: NewsfeedSide(),
            ),
          ],
        ),
      ),
    );
  }
}
