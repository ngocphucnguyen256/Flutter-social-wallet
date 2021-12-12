import 'package:flutter/material.dart';
import '../helper/responsive.dart';
import './screens/desktop.dart';
import './screens/mobile.dart';
import './screens/tablet.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      key: const Key('App'),
      mobile: Mobile(),
      tablet: Tablet(),
      desktop: Desktop(),
    ));
  }
}
