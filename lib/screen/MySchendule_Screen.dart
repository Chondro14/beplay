import 'package:Be_Play/components/dance_item.dart';
import 'package:Be_Play/data_dummy.dart';
import 'package:Be_Play/model/schendule.dart';
import 'package:flutter/material.dart';

class MySchendule_Screen extends StatefulWidget {
  @override
  _MySchendule_Screen createState() => _MySchendule_Screen();
}

class _MySchendule_Screen extends State<MySchendule_Screen> {
  int itemCounts = schendule.length;
  List<Schendule> dataModel1 = schendule;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.5,
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
                          'My Schendule',
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
                                  title: dataModel1[index].title,
                                  time: dataModel1[index].time,
                                  description: dataModel1[index].desc,
                                );
                              })
                          : Center(
                              child: Text(
                                'Please Join Our Class',
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
