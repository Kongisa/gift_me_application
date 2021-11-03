import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/donation_options.dart';
import 'package:project_gift_me/pages/navigation_drawer_widget.dart';
//import 'package:project_gift_me/pages/request_main.dart';
//import 'package:project_gift_me/routes/routes.dart';
import 'package:project_gift_me/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final pages = [MainPage(), DonationOptions()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: NavigationDrawerWidget(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 80,
            title: Text('Gift Me'),
            centerTitle: true,
            // actions: [
            //   Padding(
            //     padding: const EdgeInsets.only(right: 10),
            //     child: Icon(Icons.settings,size: 40),
            //   )
            // ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                //importing the blue BoxDecoration
                color: AppColors.boxDecorationBlue,
              ),
            ),
          ),
          body: pages[currentIndex]),
    );
  }
}
