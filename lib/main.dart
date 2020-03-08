import 'package:flutter/material.dart';
import 'package:petrodietas/src/pages/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PetroDietas',
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash',
      routes: <String, WidgetBuilder>{
        'splash': (BuildContext context) => SplashPage()
      },
    );
  }
}
