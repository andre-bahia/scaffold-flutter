import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/');
  }
  
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      backgroundColor: Color(0xFF344D5B),
      body: new Center(
        child: new Image.asset("images/icon.png"),
      ),
    );
  }
}