import 'package:flutter/material.dart';
import 'package:flutter_application/components/menu.dart';
import 'package:flutter_application/components/middle_content.dart';
import 'package:flutter_application/components/newsfeed_content.dart';
import 'package:flutter_application/screens/newsfeed_tab_video.dart';
import '../constants.dart';

class NewsfeedMobile extends StatefulWidget {
  const NewsfeedMobile({Key? key}) : super(key: key);

  @override
  State<NewsfeedMobile> createState() => _NewsfeedMobileState();
}

class _NewsfeedMobileState extends State<NewsfeedMobile> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    NewsfeedContent(),
    NewsfeedTabVideo(),
    Text('Groups'),
    Text('Gaming'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text("Dak"),
          backgroundColor: bgColor,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: bgColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Videos',
              backgroundColor: Colors.yellow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined),
              label: 'Groups',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.games),
              label: 'Gaming',
              backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: Menu(),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
