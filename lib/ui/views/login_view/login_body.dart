import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import '/ui/views/login_view/login_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AppLogo(),
        LoginForm(),
      ],
    );
  }
}
