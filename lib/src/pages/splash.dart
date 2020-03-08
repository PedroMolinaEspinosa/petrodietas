import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petrodietas/src/controllers/screen_controllers.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Size size;
  Timer _timer;
  _SplashPageState();
  @override
  void initState() {
    super.initState();
    _timer = new Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        Navigator.pushReplacementNamed(context, "home");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    size = getMediaSize(context);
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(left: size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Petro",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width * 0.15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "dietas",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: size.width * 0.15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Center(child: Image.asset("assets/intro.gif")),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.yellowAccent,
            ],
          ),
        ),
      ),
    );
  }
}
