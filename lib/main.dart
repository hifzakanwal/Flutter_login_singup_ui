import 'package:firebase_auth/Loginwithphoneno.dart';
import 'package:firebase_auth/SignUpScreen.dart';
import 'package:firebase_auth/Forgetpassword.dart';
import 'package:firebase_auth/SplashScreen.dart';
import 'package:flutter/material.dart';

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
          splashscreen(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
