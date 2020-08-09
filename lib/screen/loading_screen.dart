import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/material.dart';

import 'image_slider.dart';
import 'no_connection.dart';

class loading_Screen extends StatefulWidget {
  static String loadingScreen = '/loading_Screen';

  @override
  _Loading_Screen createState() => _Loading_Screen();
}

class _Loading_Screen extends State<loading_Screen> {
  Function duringSplash = () {
    print('Something background process');
    int a = 123 + 23;
    print(a);

    if (a > 100)
      return 1;
    else
      return 2;
  };

  Map<int, Widget> screen = {
    1: image_Silder_Screen(),
    2: no_Connection_Screen()
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: AnimatedSplash(
            imagePath: 'images/logo2.png',
            home: loading_Screen(),
            duration: 3500,
            type: AnimatedSplashType.BackgroundProcess,
            customFunction: duringSplash,
            outputAndHome: screen,
          ),
        ),
      ),
    );
  }
}
