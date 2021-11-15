import 'dart:async';
import 'package:flutter/material.dart';
import 'main_page.dart';

class SplashScreen4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState4();
  }
}

class StartState4 extends State<SplashScreen4> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Your Donation Request Will Be Reviewed...Thank You')
            ],
          ),
        ));
  }
}
