import 'package:flutter/material.dart';
import '../../../core/external_color.dart';

ElevatedButton loginButton() {
  return ElevatedButton(
    style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: const BorderSide(color: Colors.black))),
        padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(horizontal: 46, vertical: 8)),
        backgroundColor: MaterialStateProperty.all<Color>(ExternalColor.blue)),
    onPressed: () {},
    child: const Text(
      'Log In',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 15,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
