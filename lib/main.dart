import 'package:bikesafe_web/screens/transport_update.dart';
import 'package:bikesafe_web/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    TransUpdateScreen.routeName: (context) => TransUpdateScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bikesafe',
      theme: AwesomeTheme.awesomeTheme,
      home: TransUpdateScreen(),
      routes: routes,
    );
  }
}


