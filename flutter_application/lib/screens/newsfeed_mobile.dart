import 'package:flutter/material.dart';
import 'package:flutter_application/components/custom_app_bar.dart';
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
  int _selectedIndexTop = 0;
  final List<IconData> _icons = const [
    Icons.facebook,
    Icons.task_alt_outlined,
    Icons.brightness_1_outlined,
    Icons.video_collection_outlined
  ];

  static List<Widget> _widgetOptions = <Widget>[
    NewsfeedContent(),
    NewsfeedTabVideo(),
    Text('Groups'),
    Text('Gaming'),
    Text('Fb'),
    Text('TikTok'),
    Text('Twitter'),
    Text('Youtube'),
  ];

  static List<Widget> _widgetOptionsTop = <Widget>[
    Text('Fb'),
    Text('TikTok'),
    Text('Twitter'),
    Text('Youtube'),
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _widgetOptionsTop.length,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 100),
          child: CustomAppBar(
            icons: _icons,
            selectedIndex: _selectedIndexTop,
            onTap: _onItemTappedTop,
          ),
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
        endDrawer: Drawer(
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

  void _onItemTappedTop(int index) {
    setState(() {
      _selectedIndexTop = index;
    });
  }
}
