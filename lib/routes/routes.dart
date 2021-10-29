import 'package:flutter/material.dart';
import 'package:project_gift_me/pages/donation_options.dart';
import 'package:project_gift_me/pages/donor.dart';
import 'package:project_gift_me/pages/get_item2.dart';
import 'package:project_gift_me/pages/get_items.dart';
import 'package:project_gift_me/pages/login.dart';
import 'package:project_gift_me/pages/main_page.dart';
import 'package:project_gift_me/pages/main_page2.dart';
import 'package:project_gift_me/pages/food_items.dart';
import 'package:project_gift_me/pages/non_food_items.dart';
import 'package:project_gift_me/pages/request_main.dart';
import 'package:project_gift_me/pages/request_main2.dart';
import 'package:project_gift_me/pages/settings.dart';
import 'package:project_gift_me/pages/sign_up.dart';
import 'package:project_gift_me/pages/splashScreen.dart';
import 'package:project_gift_me/pages/splashScreen2.dart';


class RouteManager {
  static const String splashScreen = '/splashScreen';
  static const String loginPage = '/';
  static const String mainPage = '/mainPage';
  static const String splashScreen2 = '/splashScreen2';
  static const String mainPage2 = '/mainPage2';
  static const String requestMain = '/requestMain';
  static const String requestMain2 = '/requestMain2';
  static const String donationOptions = '/donationOptions';
  static const String donor = '/donor';
  static const String signUp = '/signUp';
  static const String getItem = '/getItem';
  static const String getItem2 = '/getItem2';
  static const String foodItems = '/FoodItems';
  static const String nonFoodItems = '/nonFoodItems';
  static const String settingsPage = '/settingsPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );

        case splashScreen2:
        return MaterialPageRoute(
          builder: (context) => SplashScreen2(),
        );

      case loginPage:
        return MaterialPageRoute(
          builder: (context) => Login(),
        );

      case mainPage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );

      case mainPage2:
        return MaterialPageRoute(
          builder: (context) => MainPage2(),
        );

      case requestMain:
        return MaterialPageRoute(
          builder: (context) => RequestMain(),
        );

      case requestMain2:
        return MaterialPageRoute(
          builder: (context) => RequestMain2(),
        );

      case donationOptions:
        return MaterialPageRoute(
          builder: (context) => DonationOptions(),
        );

      case donor:
        return MaterialPageRoute(
          builder: (context) => Donor(),
        );

      case getItem:
        return MaterialPageRoute(
          builder: (context) => GetItem(),
        );

      case getItem2:
        return MaterialPageRoute(
          builder: (context) => GetItem2(),
        );

      case foodItems:
        return MaterialPageRoute(
          builder: (context) => FoodItems(),
        );

      case nonFoodItems:
        return MaterialPageRoute(
          builder: (context) => NonFoodItems(),
        );

      case signUp:
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );

      case settingsPage:
        return MaterialPageRoute(
          builder: (context) => Settings(),
        );

      default:
        throw FormatException('Route not found! Check routes again!');
    }
  }
}
