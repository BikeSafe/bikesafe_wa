import 'package:bikesafe_web/screens/transport_create.dart';
import 'package:bikesafe_web/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    TransCreateScreen.routeName: (context) => TransCreateScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bikesafe',
      theme: AwesomeTheme.awesomeTheme,
      home: TransCreateScreen(),
      routes: routes,
    );
  }
}


