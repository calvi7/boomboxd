import 'package:flutter/material.dart';

import '/ui/views/login_view/login_background.dart';
import 'sign_up_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          LoginBackground(),
          SignUpBody(),
        ],
      ),
    );
  }
}
