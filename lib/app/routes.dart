import 'package:flutter/material.dart';
import 'package:montra/features/auth/presentation/pages/login_page.dart';
import 'package:montra/features/auth/presentation/pages/signup_page.dart';
import 'package:montra/features/onboarding/presentation/pages/onbording_page.dart';
import 'package:montra/features/profile/presentation/pages/profile_page.dart';
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
      case '/profile':
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      default:
        return MaterialPageRoute(builder: (context) => const SplashPage());
    }
  }
}
