import 'package:flutter/widgets.dart' show BuildContext, Container, Widget;
import 'package:movil181/app/ui/pages/login/login_page.dart';
import 'package:movil181/app/ui/pages/splash/splash_page.dart';
import 'package:movil181/app/ui/routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes => {
      Routes.SPLASH: (_) => const SplashPage(),
      Routes.LOGIN: (_) => const LoginPage(),
      Routes.HOME: (_) => Container(),
    };
