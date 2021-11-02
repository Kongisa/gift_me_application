import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_gift_me/routes/routes.dart';


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
