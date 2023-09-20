import 'package:flutter/material.dart';
import 'package:hangout_v3/pages/LoginScreen.dart';
void main() {
  runApp(MyApp());
}
/* TODO */
// Login Page:
// Google girisi, logo, welcome yazisi, giriş alanları, register redirect

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), // Use the LoginScreen widget as the home screen
    );
  }
}