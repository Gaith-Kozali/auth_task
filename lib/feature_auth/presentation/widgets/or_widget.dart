import 'package:flutter/material.dart';
import '../../../core/external_color.dart';

Widget orWidget({required double height, required double width}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: width * 0.11)
        .copyWith(bottom: height * 0.025),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: width * 0.35,
          child: const Divider(color: ExternalColor.div),
        ),
        const Text(
          'OR',
          style: TextStyle(
            color: Color(0xFF9E9999),
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          width: width * 0.35,
          child: const Divider(color: ExternalColor.div),
        )
      ],
    ),
  );
}
