import 'package:flutter/material.dart';

import 'app_logo.dart';

class LogoHero extends StatelessWidget {
  const LogoHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Hero(
      tag: "logoHero",
      child: AppLogo(),
    );
  }
}
