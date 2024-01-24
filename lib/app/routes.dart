import 'package:flutter/material.dart';
import 'package:montra/features/auth/presentation/pages/register_page.dart';
import 'package:montra/features/splash.page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/register':
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
