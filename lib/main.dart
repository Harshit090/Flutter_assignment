import 'package:behance/screens/homepage.dart';
import 'package:behance/screens/screem2.dart';
import 'package:flutter/material.dart';

import 'screens/screen1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        Screen_One.routeName: (ctx) => Screen_One(),
        Screen_Two.routeName: (ctx) => Screen_Two(),
      },
    );
  }
}
