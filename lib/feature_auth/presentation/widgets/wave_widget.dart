import 'package:flutter/material.dart';
import '../../../core/external_color.dart';

class WaveWidget extends StatelessWidget {
  WaveWidget({Key? key, required this.height}) : super(key: key);
  double height;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
            clipper: Clipper(),
            child: Container(
                height: height * 0.07, color: const Color(0xFF3A4161))),
        ClipPath(
            clipper: Clipper(),
            child: Container(height: height * 0.06, color: ExternalColor.blue)),
      ],
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.12, size.height * 0.45,
        size.width * 0.25, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.37, size.height, size.width * 0.5, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.62, size.height * 0.35,
        size.width * 0.8, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.95, size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
