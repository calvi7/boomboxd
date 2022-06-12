import 'package:flutter/material.dart';
import 'dart:math' as math;

import '/constants.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: height * 0.45,
          foregroundDecoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/album-collage.jpg"),
          ),
        ),
        const _SlopedBoxContainer(),
      ],
    );
  }
}

class _SlopedBoxContainer extends StatelessWidget {
  const _SlopedBoxContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi,
      child: ClipPath(
        clipper: _SlopedBoxClipper(),
        child: Container(
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}

class _SlopedBoxClipper extends CustomClipper<Path> {
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
