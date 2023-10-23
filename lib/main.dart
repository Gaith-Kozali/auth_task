import 'package:flutter/material.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/forget_password_screen.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/login_screen.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SignUpScreen.route: (context) => const SignUpScreen(),
          LoginScreen.route: (context) => const LoginScreen(),
          ForgetPasswordScreen.route: (context) => const ForgetPasswordScreen()
        },
        home: const LoginScreen ());
  }
}
