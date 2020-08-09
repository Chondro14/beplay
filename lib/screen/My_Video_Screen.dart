import 'package:Be_Play/components/dance_item.dart';
import 'package:Be_Play/data_dummy.dart';
import 'package:Be_Play/model/dancemodel.dart';
import 'package:flutter/material.dart';

class MyVideo_Screen extends StatefulWidget {
  @override
  _Myvideo_Screen createState() => _Myvideo_Screen();
}

class _Myvideo_Screen extends State<MyVideo_Screen> {
  List<DanceModel> dataModel1 = myvideos;
  int itemCounts = myvideos.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1.5000,
        child: Column(
          children: [
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
                        'My Class',
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
                    child: itemCounts > 0
                        ? ListView.builder(
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
                            })
                        : Center(
                            child: Text(
                              'Please Set your Class Schendule',
                              style: TextStyle(
                                  fontSize: 26, fontWeight: FontWeight.w600),
                            ),
                          ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
