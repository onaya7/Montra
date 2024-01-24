import 'package:flutter/material.dart';
import 'package:montra/app/routes.dart';
import 'package:montra/app/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: '/splash');
  }
}
