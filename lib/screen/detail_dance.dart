import 'package:Be_Play/components/reviews_item.dart';
import 'package:Be_Play/data_dummy.dart';
import 'package:Be_Play/model/dancemodel.dart';
import 'package:Be_Play/model/reviews.dart';
import 'package:Be_Play/screen/transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailDance extends StatefulWidget {
  DetailDance({Key key, @required this.danceModel}) : super(key: key);
  final DanceModel danceModel;

  @override
  _DetailDanceState createState() => _DetailDanceState(danceModel);
}

class _DetailDanceState extends State<DetailDance> {
  _DetailDanceState(this.danceModel);

  DanceModel danceModel;
  List<ReviewsDance> danceReviews = reviewsDance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        leading: FlatButton(
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.2,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16.0),
                    bottomRight: Radius.circular(16.0)),
                child: Container(
                  height: MediaQuery.of(context).size.height / 12,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Transform.translate(
                  offset: Offset(0, -50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    child: Image.network(danceModel.images),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      danceModel.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w900),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 8,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2.0, color: Colors.orange))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Time',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              danceModel.date,
                              style: TextStyle(fontFamily: 'Montserrat'),
                            ),
                            Text(danceModel.time,
                                style: TextStyle(fontFamily: 'Montserrat'))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              '20 Slot\nAvailable',
                              style: TextStyle(fontFamily: 'Montserrat'),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2.0, color: Colors.orange))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Place',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      ),
                      Text(
                        danceModel.place,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Montserrat'),
                      ),
                      Text(
                        danceModel.author,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Montserrat'),
                      ),
                      Text(
                        danceModel.skill,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 2.0, color: Colors.orange))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Reviews',
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Montserrat'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 5.5,
                        child: ListView.builder(
                            itemCount: reviewsDance.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return ReviewsItem(
                                  images: reviewsDance[index].imageProfile,
                                  rating: reviewsDance[index].rating,
                                  descriptions: reviewsDance[index].description,
                                  nameReview: reviewsDance[index].name);
                            }),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomSheet: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TransactionScreen(
                        danceModel: danceModel,
                      )));
        },
        child: Container(
          color: Colors.orange,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 12,
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
