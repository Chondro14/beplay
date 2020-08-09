import 'package:Be_Play/screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CorporateSuccesScreen extends StatefulWidget {
  CorporateSuccesScreen({Key key}) : super(key: key);

  @override
  _CorporateSuccesScreenState createState() => _CorporateSuccesScreenState();
}

class _CorporateSuccesScreenState extends State<CorporateSuccesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.01),
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
        title: Text('Corporate'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.assignment_turned_in,
                            color: Colors.white,
                            size: 40,
                          ),
                          backgroundColor: Colors.orange,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Thanks for your request. \n Wait for reply soon',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                });
              },
              child: Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 15,
                child: Center(
                  child: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
