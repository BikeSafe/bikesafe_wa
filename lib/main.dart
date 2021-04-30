import 'package:bikesafe_web/screens/login.dart';
import 'package:bikesafe_web/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginScreen.routeName: (context) => LoginScreen()
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bikesafe',
      theme: AwesomeTheme.awesomeTheme,
      home: LoginScreen(),
      routes: routes,
    );
  }
}


