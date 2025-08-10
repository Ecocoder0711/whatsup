import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsup/firebase_options.dart';
import 'package:whatsup/ui/screens/splash/splash_screen.dart';
import 'package:whatsup/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Whatsup());
}

class Whatsup extends StatelessWidget {
  const Whatsup({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => const MaterialApp(
        onGenerateRoute: RouteUtils.onGenerateRoute,
        home: SplashScreen()
      ),
    );
  }
}
