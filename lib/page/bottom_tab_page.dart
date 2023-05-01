import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_city_picker/page/constants/Strings.dart';
import 'package:random_city_picker/page/top_page.dart';

import 'settings/setting_page.dart';



class BottomTabPage extends StatefulWidget {
  const BottomTabPage({Key? key}) : super(key: key);

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {

  int _currentIndex = 0;

  final _pageWidgets = [
    const TopPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      // appBar: AppBar(
      //   title: Text('BottomNavigationBar'),
      // ),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_outlined), label: Strings.TAB_NAME_TOP),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: Strings.TAB_NAME_SETTINGS),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index );
}
