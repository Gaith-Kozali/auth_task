import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gaith_kouzali_cyber/feature_auth/presentation/screens/signup_screen.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../../core/external_color.dart';
import '../widgets/reset_button.dart';
import '../widgets/wave_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static const String route = "ForgetPasswordScreen";
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
                    'Forget Password',
                    style: TextStyle(
                      color: Color(0xFF0C133A),
                      fontSize: 35,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: width * 0.82,
                    height: height * 0.22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: const GradientBoxBorder(
                            gradient: LinearGradient(
                                colors: [
                              ExternalColor.blue,
                              Colors.transparent
                            ],
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
                      const ResetButton()
                      ],
                    )),
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
                              context, SignUpScreen.route);
                        },
                        child: const Text('Log in',
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
      ),
    );
  }
}
