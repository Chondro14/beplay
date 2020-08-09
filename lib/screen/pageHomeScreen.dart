import 'package:Be_Play/screen/Classes_Screen.dart';
import 'package:Be_Play/screen/Corporate_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<String> images = [
  'images/photo-1549576490-b0b4831ef60a.png',
  'images/photo-1524594152303-9fd13543fe6e.png'
];
final List<String> title = [''];

class pageHome_Screen extends StatefulWidget {
  @override
  _Page_Home createState() => _Page_Home();
}

class _Page_Home extends State<pageHome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(28.0),
                  bottomLeft: Radius.circular(28.0)),
              child: Container(
                color: Colors.orangeAccent,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Transform.translate(
                        offset: Offset(33.0, 10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.height / 6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: const AssetImage('images/aaa.jpeg'),
                                  fit: BoxFit.fill),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  'My Class',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: const Color(0xfff6f6f6),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, top: 25.0),
                                child: SizedBox(
                                  width: 24.0,
                                  child: Text(
                                    '0',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 21,
                                      color: const Color(0xfff6f6f6),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  'Loyalty',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12,
                                    color: const Color(0xfff6f6f6),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 50.0, top: 25.0),
                                child: SizedBox(
                                  width: 24.0,
                                  child: Text(
                                    '20',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 21,
                                      color: const Color(0xfff6f6f6),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 5,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'images/photo-1524594152303-9fd13543fe6e.png'),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                        color: Colors.grey, width: 2.0)),
                              ),
                              Text(
                                'Zumba Live Stream',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 5,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'images/photo-1549576490-b0b4831ef60a.png',
                                      ),
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                    border: Border.all(
                                        color: Colors.grey, width: 2.0)),
                              ),
                              Text(
                                'Yoga Livestream class',
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 4,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              color: Colors.deepOrange,
                              child: MaterialButton(
                                minWidth:
                                    MediaQuery.of(context).size.width / 7.5,
                                onPressed: () {
                                  setState(() {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Classes_Screen();
                                    }));
                                  });
                                },
                                child: Row(children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FontAwesomeIcons.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Classes',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              color: Colors.deepOrange,
                              child: MaterialButton(
                                minWidth:
                                    MediaQuery.of(context).size.width / 7.5,
                                onPressed: () {},
                                child: Row(children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FontAwesomeIcons.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Trainer',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: MediaQuery.of(context).size.height / 4,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              color: Colors.deepOrange,
                              child: MaterialButton(
                                minWidth:
                                    MediaQuery.of(context).size.width / 7.5,
                                onPressed: () {},
                                child: Row(children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FontAwesomeIcons.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Package',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Material(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              color: Colors.deepOrange,
                              child: MaterialButton(
                                minWidth:
                                    MediaQuery.of(context).size.width / 7.5,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Corporate_Screen()));
                                },
                                child: Row(children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      FontAwesomeIcons.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Text(
                                    'Corporate',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
