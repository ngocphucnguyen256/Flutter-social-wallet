import 'package:flutter/material.dart';
import '../helper/responsive.dart';
import '../screens/desktop.dart';
import '../screens/mobile.dart';
import '../screens/tablet.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Responsive(
      //   key: const Key('HelpPage'),
      //   mobile: Mobile(),
      //   tablet: Tablet(),
      //   desktop: Desktop(),
      // ),
      color: Colors.white,
    );
  }
}
