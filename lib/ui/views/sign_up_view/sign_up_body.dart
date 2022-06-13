import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AppLogo(),
        SignUpForm(),
      ],
    );
  }
}
