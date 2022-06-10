import 'package:boomboxd/ui/views/login_view/login_form.dart';
import 'package:flutter/material.dart';

import '/widgets/widgets.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        AppLogo(),
        LoginForm(),
      ],
    );
  }
}