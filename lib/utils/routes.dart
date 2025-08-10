import 'package:flutter/material.dart';
import 'package:whatsup/core/constants/string.dart';
import 'package:whatsup/ui/screens/homescreen.dart';
import 'package:whatsup/ui/screens/splash/splash_screen.dart';

class RouteUtils {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => const Homescreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Text("No Route Found")),
        );
    }
  }
}
