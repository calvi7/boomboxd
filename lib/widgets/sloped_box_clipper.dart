import 'package:flutter/material.dart';

class SlopedBoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final resized = Size(size.width, size.height * 0.55);
    final path = Path()
      ..lineTo(0, resized.height)
      ..lineTo(0, size.height * 0.75)
      ..lineTo(size.width, resized.height)
      ..lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
