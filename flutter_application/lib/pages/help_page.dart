import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import '../helper/responsive.dart';
import '../screens/desktop.dart';
import '../screens/mobile.dart';
import '../screens/tablet.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  get bgColor => null;

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
              child: Container(
                color: Colors.white,
                child: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 50 : 20,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Text(
                  'Help',
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 50 : 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // child: Responsive(
    //   key: const Key('Setting'),
    //   mobile: Mobile(),
    //   tablet: Tablet(),
    //   desktop: Desktop(),
    // ),
  }
}
