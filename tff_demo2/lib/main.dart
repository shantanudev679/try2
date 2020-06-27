import 'package:flutter/material.dart';
import 'package:tffdemo2/Screens/home_page.dart';
import 'Screens/about_us.dart';
import 'Screens/executives_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        AboutUsPage.id: (context) => AboutUsPage(),
        HomePage.id: (context) => HomePage(),
        ExecutivesPage.id: (context) => ExecutivesPage(),
      },
    );
  }
}

