import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tffdemo2/constants.dart';
import 'executives_page.dart';
import 'about_us.dart';

import 'package:qrscan/qrscan.dart' as scanner;
import 'dart:async';


class HomePage extends StatefulWidget {
  static const String id = 'home_page';


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _qrResult = "Nothing yet";

  Future _scan() async {
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      setState(() {
        _qrResult = barcode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: kAppBar,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/2019 logo.jpg'),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                width: 200.0,
                height: 200.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, ExecutivesPage.id);
                    },
                    elevation: 10.0,
                    color: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black87),
                    ),
                    child: Text(
                      'Executives',
                    ),
                  ),
                  RaisedButton(
                      onPressed:() {
                        Navigator.pushNamed(context, AboutUsPage.id);
                      },
                      elevation: 10.0,
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.black87),
                      ),
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  RaisedButton(
                    onPressed: (){
                      print('Another pressed');
                    },
                    elevation: 10.0,
                    color: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black87),
                    ),
                    child: Text(
                      'Another',
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child:  RaisedButton(
                    elevation: 10.0,
                    color: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.black87),
                    ),
                    child: Icon(Icons.scanner),
                    onPressed: (){
                      print('pressed scanner');
                    },
                  ),
                ),
              ],
            ),
            Text(
              '$_qrResult',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: _scan,
          icon: Icon(Icons.camera_alt),
          label: Text('Scan'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

//
//}class MyRoundedButton extends StatelessWidget {
//  MyRoundedButton(@required color, @required)
//
//  Color color;
//  Navigator onPressed;
//
//
//  @override
//  Widget build(BuildContext context) {
//    return
//  }
