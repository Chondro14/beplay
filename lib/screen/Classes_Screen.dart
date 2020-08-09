import 'package:Be_Play/screen/Dance_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Classes_Screen extends StatefulWidget {
  _Classes_Screen createState() => _Classes_Screen();
}

class _Classes_Screen extends State<Classes_Screen> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ClipRRect(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(64.0)),
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            color: Colors.deepOrange,
            child: Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                  )),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {
                setState(() {
                  this.isSearching = !this.isSearching;
                });
              })
        ],
        title: !isSearching
            ? Text('Classes')
            : TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    icon: Icon(FontAwesomeIcons.search),
                    hintText: 'Searching Classes'),
              ),
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          ClipRRect(
            child: Container(
              color: Colors.orangeAccent,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 6,
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32.0),
                bottomRight: Radius.circular(32.0)),
          ),
          Transform.translate(
            offset: Offset(0, -100),
            child: SizedBox(
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      )),
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
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    height: MediaQuery.of(context).size.height /
                                        5.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              'https://res.cloudinary.com/dk0z4ums3/image/upload/v1547609035/attached_image/tidak-perlu-bertubuh-lentur-untuk-ikut-yoga-alodokter.jpg'),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        border: Border.all(
                                            color: Colors.grey, width: 2.0)),
                                  ),
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
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    height: MediaQuery.of(context).size.height /
                                        5.5,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://image-cdn.medkomtek.com/eJSGGrpBoCqXy1fnTKQNxz2kSuc=/1200x675/smart/filters:quality(75):strip_icc():format(jpeg)/klikdokter-media-buckets/medias/2307968/original/048533100_1567222145-Bakar-Kalori-dengan-Gerakan-Yoga-Ini-By-Pressmaster-Shutterstock.jpg',
                                          ),
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(16.0),
                                        ),
                                        border: Border.all(
                                            color: Colors.grey, width: 2.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.deepOrange,
                                    child: MaterialButton(
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              7.5,
                                      onPressed: () {
                                        setState(() {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Dance_Screen();
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
                                          'Dance',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.deepOrange,
                                    child: MaterialButton(
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              7.5,
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
                                          'Cardio',
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
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.deepOrange,
                                    child: MaterialButton(
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              7.5,
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
                                          'Martial Arts',
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Material(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                    color: Colors.deepOrange,
                                    child: MaterialButton(
                                      minWidth:
                                          MediaQuery.of(context).size.width /
                                              7.5,
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
                                          'Strenght',
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
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
