import 'package:Be_Play/screen/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class Mantaaaapdance extends StatefulWidget {
  Mantaaaapdance({Key key}) : super(key: key);

  @override
  _MantaaaapdanceState createState() => _MantaaaapdanceState();
}

class _MantaaaapdanceState extends State<Mantaaaapdance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.orange,
          child: Column(
            children: <Widget>[
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
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
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
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height:
                                          MediaQuery.of(context).size.height /
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
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          1.5,
                                      height:
                                          MediaQuery.of(context).size.height /
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
                    ],
                  ),
                ),
              ),
              Text('Zumba Dance'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.deepPurple),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[Text('Time :'), Text('20 Slots')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[Text('Time :'), Text('20 Slots')],
                      ),
                      Text('60 min')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.deepPurple),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[Text('Time :'), Text('20 Slots')],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[Text('Time :'), Text('20 Slots')],
                      ),
                      Text('60 min'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.deepPurple),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Place'),
                      Text('VIA Jitsi'),
                      Text('Coach Steven'),
                      Text('Beginner')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 6,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 2, color: Colors.deepPurple),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text('Reviews'),
                      RatingBar.readOnly(
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        initialRating: 4.0,
                        filledColor: Colors.yellowAccent,
                        emptyColor: Colors.yellowAccent,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return TransactionScreen();
            }));
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 20,
          color: Colors.orange,
          child: Center(
            child: Text(
              'Join',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
