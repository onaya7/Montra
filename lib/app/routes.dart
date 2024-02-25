import 'package:flutter/material.dart';
import 'package:montra/features/auth/presentation/pages/login_page.dart';
import 'package:montra/features/auth/presentation/pages/signup_page.dart';
import 'package:montra/features/builder/presentation/pages/builder_page.dart';
import 'package:montra/features/onboarding/presentation/pages/onbording_page.dart';
import 'package:montra/features/splash.page.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/onboarding':
        return MaterialPageRoute(builder: (context) => const OnboardingPage());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const SignupPage());
      case '/login':
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case '/builder':
        return MaterialPageRoute(builder: (context) => const BuilderPage());

      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
