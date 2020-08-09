import 'package:Be_Play/screen/Chat_Screen.dart';
import 'package:Be_Play/screen/MySchendule_Screen.dart';
import 'package:Be_Play/screen/My_Video_Screen.dart';
import 'package:Be_Play/screen/Profile_Screen.dart';
import 'package:Be_Play/screen/pageHomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _page = 0;
  Widget _showPage = pageHome_Screen();

  Widget _ChoosePage(int page) {
    switch (page) {
      case 0:
        return pageHome_Screen();
      case 1:
        return Chat_Screen();
      case 2:
        return MyVideo_Screen();
      case 3:
        return MySchendule_Screen();
      case 4:
        return Profile_Screen();
    }
  }

  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          key: globalKey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  size: 30,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 30,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.playCircle,
                  size: 30,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.calendar,
                  size: 30,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 30,
                ),
                title: Text(''))
          ],
          onTap: (int tapindex) {
            setState(() {
              _page = tapindex;
              _showPage = _ChoosePage(tapindex);
            });
          },
          currentIndex: _page,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black26,
        ),
        body: Container(child: _showPage));
  }
}
