import 'package:flutter/material.dart';
import 'package:whatsup/core/constants/string.dart';
import 'package:whatsup/ui/screens/auth/login/login_page.dart';
import 'package:whatsup/ui/screens/auth/signup/signup_screen.dart';
import 'package:whatsup/ui/screens/home/homescreen.dart';
import 'package:whatsup/ui/screens/splash/splash_screen.dart';

class RouteUtils {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      // auth
      case signup:
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case login:
        return MaterialPageRoute(builder: (context) => const Loginscreen());
      // home
      case home:
        return MaterialPageRoute(builder: (context) => const Homescreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(body: Text("No Route Found")),
        );
    }
  }
}
