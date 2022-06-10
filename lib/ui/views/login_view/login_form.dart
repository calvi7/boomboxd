import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/widgets.dart';
import '/ui/views/views.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LoginTextFormField(),
        const LoginTextFormField(isPassword: true),
        const _ForgotPasswordButton(),
        const SizedBox(height: 30),
        AppEntryButton(
          callback: () {
            Navigator.of(context).pushReplacement(
              AnimatedRouter.route(
                const LoginView(),
                const GetStartedView(),
              ),
            );
          },
          text: "Login",
        ),
        const SizedBox(height: 30),
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.secondaryColor,
          ),
          onPressed: () {},
          child: const Text("Don't have an account? Please Sign Up first"),
        ),
      ],
    );
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              primary: AppColors.secondaryColor,
            ),
            onPressed: () {},
            child: const Text("Forgot Password?"),
          ),
        ],
      ),
    );
  }
}
