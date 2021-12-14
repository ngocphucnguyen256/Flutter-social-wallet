import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/pages/help_page.dart';
import 'package:flutter_application/pages/login.dart';
import 'package:flutter_application/pages/newsfeed.dart';
import 'package:flutter_application/pages/setting.dart';
import 'package:provider/provider.dart';
import './model/navigation_item.dart';
import './provider/navigation_provider.dart';
import './pages/dash_board.dart';
import 'components/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final String title = 'Dak';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
        ),
        home: MainPage(),
      ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildPages();

  Widget buildPages() {
    final provider = Provider.of<NavigationProvider>(context);
    final navigationItem = provider.navigationItem;

    switch (navigationItem) {
      case NavigationItem.dashboard:
        return Dashboard();
      case NavigationItem.transaction:
        return Transactions();
      case NavigationItem.newsfeed:
        return Newsfeed();
      case NavigationItem.help:
        return HelpPage();
      case NavigationItem.logout:
        return Login();
      case NavigationItem.settings:
        return Setting();
    }
  }
}
