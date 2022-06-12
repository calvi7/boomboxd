import 'package:flutter/material.dart';

import '/ui/views/views.dart';
import '/constants.dart';
import '/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // here be username
        LoginTextFormField(
          controller: usernameController,
          hint: "Username",
          icon: Icons.person_rounded,
        ),
        // here be password
        LoginTextFormField(
          controller: passwordController,
          hint: "Password",
          icon: Icons.lock_rounded,
          isPassword: true,
        ),
        // forgot password?
        const _ForgotPasswordButton(),
        const SizedBox(height: 30),
        // LOGIN
        AppEntryButton(
          callback: () {
            var route = AnimatedRouter.route(
              const LoginView(),
              const GetStartedView(),
            );

            Navigator.of(context).pushReplacement(route);
          },
          text: "Login",
        ),
        const SizedBox(height: 30),
        // Sign Up
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
