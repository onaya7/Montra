import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:montra/core/device/routes/app_routes.dart';
import 'package:montra/core/device/themes/app_themes.dart';
import 'package:montra/utils/constants/color_constants.dart';
import 'package:montra/features/auth/provider/auth_provider.dart';
import 'package:montra/features/builder/provider/builder_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorConstants.lightColor100, // Set status bar color
      statusBarIconBrightness: Brightness.dark, // Set status bar icon color
      systemNavigationBarColor:
          ColorConstants.lightColor100, // Set navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => BuilderProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute: '/onboarding',
      ),
    );
  }
}
