import 'package:Be_Play/screen/image_slider.dart';
import 'package:Be_Play/screen/login_screen.dart';
import 'package:Be_Play/screen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      home: loading_Screen(),
      initialRoute: loading_Screen.loadingScreen,
      routes: {
        loading_Screen.loadingScreen: (BuildContext context) =>
            loading_Screen(),
        image_Silder_Screen.imageSliderScreen: (BuildContext context) =>
            image_Silder_Screen(),
        login_Screen.loginScreen: (BuildContext context) => login_Screen(),
        register_Screen.registerScreen: (BuildContext context) =>
            register_Screen()
      },
    );
  }
}
