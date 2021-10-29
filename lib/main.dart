import 'package:flutter/material.dart';
import 'package:project_gift_me/routes/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MaterialApp(
      initialRoute: RouteManager.loginPage,
      onGenerateRoute: RouteManager.generateRoute,
      
    );
  }
}
