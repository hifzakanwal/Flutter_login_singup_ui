import 'package:firebase_auth/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'Component.dart';

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
      theme: ThemeData(
        primaryColor: Color(0xff2470c7),
      ),
      home:
          signUpScreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
