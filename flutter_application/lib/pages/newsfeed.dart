import 'package:flutter/material.dart';
import '../helper/responsive.dart';
import '../screens/desktop.dart';
import '../screens/mobile.dart';
import '../screens/tablet.dart';

class Newsfeed extends StatelessWidget {
  const Newsfeed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      // child: Responsive(
      //   key: const Key('Newsfeed'),
      //   mobile: Mobile(),
      //   tablet: Tablet(),
      //   desktop: Desktop(),
      // ),
    );
  }
}
