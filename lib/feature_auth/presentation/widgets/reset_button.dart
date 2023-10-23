import 'package:flutter/material.dart';
import '../../../core/external_color.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 302,
      height: 47,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                    side: const BorderSide(color: Colors.black))),
            backgroundColor:
                MaterialStateProperty.all<Color>(ExternalColor.blue)),
        onPressed: () {},
        child: const Text(
          'Reset Password',
          style: TextStyle(
            fontSize: 18,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
