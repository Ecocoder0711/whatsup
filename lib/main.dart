import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:whatsup/firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(Whatsup());
}

class Whatsup extends StatelessWidget {
  const Whatsup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Center(child: Text("Welcome to Whatsup")));
  }
}
