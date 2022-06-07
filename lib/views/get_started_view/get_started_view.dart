import 'dart:ui';

import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(
          sigma: 1.5,
          color: AppColors.mainColor,
        ),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
    required this.sigma,
    required this.color,
  }) : super(key: key);

  final double sigma;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color,
        ),
        FadedWidget(
          fadeColor: color,
          image: Image.asset("assets/drake-cover.png"),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: sigma,
              sigmaY: sigma,
            ),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
        )
      ],
    );
  }
}

class FadedWidget extends StatelessWidget {
  const FadedWidget({
    Key? key,
    required this.image,
    required this.fadeColor,
  }) : super(key: key);

  final Color fadeColor;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0, 0, 10],
          colors: [
            Colors.transparent,
            Colors.transparent,
            fadeColor,
          ],
        ),
      ),
      child: ClipRRect(
        child: image,
      ),
    );
  }
}
