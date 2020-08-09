import 'package:Be_Play/components/dance_item.dart';
import 'package:Be_Play/data_dummy.dart';
import 'package:Be_Play/model/dancemodel.dart';
import 'package:flutter/material.dart';

class Dance_Screen extends StatefulWidget {
  @override
  _DanceScreen createState() => _DanceScreen();
}

class _DanceScreen extends State<Dance_Screen> {
  List<DanceModel> dataModel1 = danceData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2,
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
                offset: Offset(0, -40),
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                          itemCount: dataModel1.length,
                          itemBuilder: (context, index) {
                            return DanceItem(
                                rating: dataModel1[index].rating,
                                title: dataModel1[index].title,
                                author: dataModel1[index].author,
                                time: dataModel1[index].time,
                                date: dataModel1[index].date,
                                description: dataModel1[index].description,
                                place: dataModel1[index].place,
                                skill: dataModel1[index].skill,
                                images: dataModel1[index].images,
                                reviewDances: dataModel1[index].reviewDances,
                                onPressed: dataModel1[index]);
                          }),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
