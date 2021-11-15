import 'package:flutter/material.dart';
import 'package:movil181/app/ui/routes/app_routes.dart';
import 'package:movil181/app/ui/routes/routes.dart';
import 'package:flutter_meedu/router.dart' as router;
import 'package:provider/provider.dart';

import 'data/data_source/remote/categories_service.dart';
import 'data/data_source/remote/stores_service.dart';

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StoresService()),
        ChangeNotifierProvider(create: (_) => CategoriesService()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          //primarySwatch: Colors.,
          primarySwatch: Colors.teal,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.teal),
          )
          //bottomAppBarColor: Colors.teal,
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
