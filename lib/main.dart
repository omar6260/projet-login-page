import 'package:flutter/material.dart';
import 'package:projet_semain1_xaral/screen/forgot_password.dart';
import 'package:projet_semain1_xaral/screen/home_scren.dart';
import 'package:projet_semain1_xaral/screen/login_screen.dart';
import 'package:projet_semain1_xaral/screen/signup.dart';

import 'constance/rout.dart';

void main() => runApp(const AuthApp());

class AuthApp extends StatelessWidget {
  const AuthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        MyRoutePage.homeScreen: (context) => HomeScreen(),
        MyRoutePage.loginSceen: (context) => LoginScreen(),
        MyRoutePage.signUp: (context) => SignUp(),
        MyRoutePage.forgotPassword: (context) => ForgotPassword(),
      },
    );
  }
}
