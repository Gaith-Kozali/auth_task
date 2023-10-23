import 'package:flutter/material.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/forget_password_screen.dart';

Widget forgetPassword(double height,BuildContext context) {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.01),
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, ForgetPasswordScreen.route);
        },
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent)),
        child: const Text(
          'Forget Password?',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
          ),
        ),
      ));
}
