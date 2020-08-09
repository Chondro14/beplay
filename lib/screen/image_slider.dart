import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

import 'login_screen.dart';

// ignore: camel_case_types
class image_Silder_Screen extends StatefulWidget {
  static String imageSliderScreen = '/imageSlider_Screen';

  @override
  _image_Slider_Screen createState() => _image_Slider_Screen();
}

class _image_Slider_Screen extends State<image_Silder_Screen> {
  final pages = [
    PageViewModel(
      pageColor: Colors.white,
      body: Text('you can sport activity as you wish anywhere'),
      title: Text('AnyWhere'),
      titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          fontSize: 30.0,
          color: Colors.black),
      bodyTextStyle: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
      bubbleBackgroundColor: Colors.orange,
      mainImage: null,
    ),
    PageViewModel(
        pageColor: Colors.white,
        body: Text('you can sport activity as you wish on time'),
        title: Text('AnyTime'),
        titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
            color: Colors.black),
        bodyTextStyle: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
        mainImage: Image.asset(
          'images/Image4.png',
          width: 360,
          height: 270,
        ),
        bubbleBackgroundColor: Colors.orange),
    PageViewModel(
        pageColor: Colors.white,
        body: Text('you can sport activity as you wish for refference'),
        title: Text('Interactive'),
        titleTextStyle: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
            color: Colors.black),
        bodyTextStyle: TextStyle(fontFamily: 'Montserrat', color: Colors.grey),
        mainImage: Image.asset(
          'images/Image5.png',
          width: 360,
          height: 270,
        ),
        bubbleBackgroundColor: Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Builder(
          builder: (context) => IntroViewsFlutter(
                pages,
                showNextButton: true,
                showBackButton: false,
                onTapDoneButton: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => login_Screen()));
                  });
                },
                pageButtonTextStyles:
                    TextStyle(color: Colors.deepOrange, fontSize: 16.0),
                pageButtonsColor: Colors.deepOrange,
              )),
    );
  }
}
