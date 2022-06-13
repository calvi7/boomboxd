import 'package:boomboxd/ui/views/sign_up_view/sign_up_view.dart';
import 'package:flutter/material.dart';

import '/ui/views/views.dart';
import '/constants.dart';
import '/widgets/widgets.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RichText _SignUpText() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have an account? Please ",
            style: TextStyle(color: AppColors.secondaryColor),
          ),
          TextSpan(
            text: "Sign Up ",
            style: TextStyle(color: AppColors.thirdColor),
          ),
          TextSpan(
            text: "first.",
            style: TextStyle(color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TitleSubtitleText(
          title: "Login",
          subtitle: "Please login to continue",
        ),
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
          callback: () {},
          text: "Login",
        ),
        const SizedBox(height: 30),
        // Sign Up
        TextButton(
          style: TextButton.styleFrom(
            primary: AppColors.secondaryColor,
          ),
          onPressed: () {
            var route = AnimatedRouter.route(
              const LoginView(),
              const SignUpView(),
            );
            Navigator.of(context).pushReplacement(route);
          },
          child: _SignUpText(),
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
