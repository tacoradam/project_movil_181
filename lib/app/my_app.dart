import 'package:flutter/material.dart';
import 'package:movil181/app/ui/routes/app_routes.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: 'APP movil 181',
      navigatorKey: router.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      routes: appRoutes,
      navigatorObservers: [
        router.observer,
      ],
    );
  }
}
