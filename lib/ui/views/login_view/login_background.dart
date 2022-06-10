import 'package:flutter/material.dart';
import 'dart:math' as math;

import '/widgets/sloped_box_clipper.dart';
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
        clipper: SlopedBoxClipper(),
        child: Container(
          color: AppColors.mainColor,
        ),
      ),
    );
  }
}
