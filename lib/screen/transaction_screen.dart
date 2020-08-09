import 'package:Be_Play/components/dance_item.dart';
import 'package:Be_Play/model/dancemodel.dart';
import 'package:Be_Play/screen/succes_transaction.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key key, @required this.danceModel}) : super(key: key);
  final DanceModel danceModel;

  @override
  _TransactionScreenState createState() =>
      _TransactionScreenState(dancemodel: danceModel);
}

class _TransactionScreenState extends State<TransactionScreen> {
  final DanceModel dancemodel;

  _TransactionScreenState({@required this.dancemodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(children: <Widget>[
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
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        child: ListView.builder(
                          itemCount: dancemodel.title.length,
                          itemBuilder: (context, index) {
                            return DanceItem(
                              rating: dancemodel.rating,
                              title: dancemodel.title,
                              author: dancemodel.author,
                              time: dancemodel.time,
                              date: dancemodel.date,
                              description: dancemodel.description,
                              place: dancemodel.place,
                              skill: dancemodel.skill,
                              images: dancemodel.images,
                              reviewDances: dancemodel.reviewDances,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Text('200.000 Tokens'),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SuccesTransaction()));
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 20,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Center(
                  child: Text('Redeem your points'),
                ),
              ),
            )
          ]),
        ));
  }
}
