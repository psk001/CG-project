import 'dart:async';
import 'package:flutter/material.dart';
import 'package:udesign/screens/home_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTimer(Home());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Image.asset(
                //   'assets/logo.jpeg',
                //   height: MediaQuery.of(context).size.height / 4,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'DecorIn',
                      style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
        ],
      ),
    );
  }

  startTimer(Widget widget) async {
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => (widget))));
  }
}
