import 'package:bikesafe_web/screens/transport_list.dart';
import 'package:bikesafe_web/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    TransListScreen.routeName: (context) => TransListScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bikesafe',
      theme: AwesomeTheme.awesomeTheme,
      home: TransListScreen(),
      routes: routes,
    );
  }
}


