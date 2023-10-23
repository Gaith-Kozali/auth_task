import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/login_screen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../../core/external_color.dart';
import '../widgets/forget_password.dart';
import '../widgets/login_button.dart';
import '../widgets/or_widget.dart';
import '../widgets/other_signin.dart';
import '../widgets/wave_widget.dart';

class SignUpScreen extends StatefulWidget {
  static const String route = "SignUpScreen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: height),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WaveWidget(height: height),
                const Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xFF0C133A),
                    fontSize: 50,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  width: width * 0.82,
                  height: height * 0.448,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      border: const GradientBoxBorder(
                          gradient: LinearGradient(
                              colors: [ExternalColor.blue, Colors.transparent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter))),
                  child: Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: ExternalColor.blue,
                              )),
                          label: const Text(
                            'Email Address',
                            style: TextStyle(
                              color: ExternalColor.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: ExternalColor.blue,
                              )),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ExternalColor.blue,
                                )),
                            label: const Text(
                              'Password',
                              style: TextStyle(
                                color: ExternalColor.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.80,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ExternalColor.blue,
                                )),
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: const Icon(Icons.visibility_outlined),
                              onPressed: () {},
                            )),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ExternalColor.blue,
                                )),
                            label: const Text(
                              'Password',
                              style: TextStyle(
                                color: ExternalColor.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.80,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: ExternalColor.blue,
                                )),
                            suffixIcon: IconButton(
                              color: Colors.black,
                              icon: const Icon(Icons.visibility_outlined),
                              onPressed: () {},
                            )),
                      ),
                      loginButton()
                    ],
                  )),
                ),
                forgetPassword(height, context),
                orWidget(width: width, height: height),
                otherSignIn(width),
                SizedBox(
                  height: height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Color(0xFF091031),
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.route);
                      },
                      child: const Text(' Log in',
                          style: TextStyle(
                            color: Color(0xFF7281D1),
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ],
                ),
                Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationX(pi),
                    child: WaveWidget(
                      height: height,
                    )),
              ])),
    ));
  }
}
