import 'package:boomboxd/ui/views/login_view/login_view.dart';
import 'package:boomboxd/ui/views/sign_up_view/sign_up_view.dart';
import 'package:boomboxd/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../login_view/login_form.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  RichText _LoginText() {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? Go to the ",
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
          TextSpan(
            text: "Login Page",
            style: TextStyle(
              color: AppColors.thirdColor,
            ),
          ),
          TextSpan(
            text: ".",
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
            title: "Sign Up", subtitle: "Create an account to continue"),
        LoginTextFormField(
          hint: "Username",
          icon: Icons.person_rounded,
          controller: usernameController,
        ),
        LoginTextFormField(
          hint: "Password",
          icon: Icons.lock_rounded,
          controller: passwordController,
          isPassword: true,
        ),
        LoginTextFormField(
          hint: "Email",
          icon: Icons.email_rounded,
          controller: emailController,
        ),
        const SizedBox(height: 30),
        AppEntryButton(
          callback: () {},
          text: "Sign Up",
        ),
        const SizedBox(height: 30),
        TextButton(
          onPressed: () {
            var route = AnimatedRouter.route(
              const SignUpView(),
              const LoginView(),
            );
            Navigator.of(context).pushReplacement(route);
          },
          style: TextButton.styleFrom(primary: AppColors.secondaryColor),
          child: _LoginText(),
        ),
      ],
    );
  }
}
