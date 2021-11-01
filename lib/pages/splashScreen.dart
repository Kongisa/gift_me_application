import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/login.dart';
import 'package:project_gift_me/styles/app_colors.dart';

//import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.gif',
                height: 260,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Gift Me',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.blueTextColor,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Getting the app ready...please wait')
            ],
          ),
        ));
  }
}
