import 'package:Be_Play/screen/corporate_succes_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Corporate_Screen extends StatefulWidget {
  @override
  _CorporateScreen createState() => _CorporateScreen();
}

class _CorporateScreen extends State<Corporate_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0001),
        elevation: 0,
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
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'If you are interested to \n corporation with us \n please let us know',
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Company Name',
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Type the Company name here .....'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Address',
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: 'Type the Address name here.....'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Totally join activity',
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText:
                                    'Type the much person join this activity here.... '),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CorporateSuccesScreen()));
                });
              },
              child: Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 15,
                child: Center(
                  child: Text(
                    'Sumbit',
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
