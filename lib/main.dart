import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_gift_me/classes/login.dart';
import 'package:project_gift_me/pages/main_page.dart';
import 'package:project_gift_me/pages/sign_up.dart';
import 'package:project_gift_me/routes/routes.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Building MyApp');
    return MaterialApp(
      initialRoute: RouteManager.splashScreen,
      onGenerateRoute: RouteManager.generateRoute,
      
    );
  }
}
