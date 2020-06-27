import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tffdemo2/constants.dart';

class ExecutivesPage extends StatelessWidget {
  static const String id = 'executive_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: kAppBar,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Text('HEADS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              ),
              SizedBox(height: 50.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    child: CircleAvatar(
                      radius: 45.0,
                      backgroundImage: AssetImage('images/billa.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50.0,
                    child: CircleAvatar(
                      radius: 45.0,
                      child:Text('2nd one'),
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
    );
  }
}
