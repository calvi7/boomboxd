import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/widgets.dart';
import '/ui/views/views.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const LoginTextFormField(),
          const LoginTextFormField(isPassword: true),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              primary: AppColors.secondaryColor,
            ),
            onPressed: () {},
            child: const Text("Forgot Password?"),
          ),
          AppEntryButton(
              callback: () {
                Navigator.of(context).pushReplacement(
                  AnimatedRouter.route(
                    const LoginView(),
                    const HomeView(),
                  ),
                );
              },
              text: "Login"),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
              primary: AppColors.secondaryColor,
            ),
            onPressed: () {},
            child: const Text("Don't have an account? Please Sign Up first"),
          ),
        ],
      ),
    );
  }
}
