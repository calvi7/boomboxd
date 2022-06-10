import 'package:flutter/material.dart';

import 'login_background.dart';
import 'login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          LoginBackground(),
          Center(
            child: LoginBody(),
          )
        ],
      ),
    );
  }
}
