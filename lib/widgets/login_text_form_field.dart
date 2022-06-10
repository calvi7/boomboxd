import '/constants.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
    Key? key,
    this.isPassword = false,
  }) : super(key: key);

  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 64,
      ),
      child: TextFormField(
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: AppColors.thirdColor,
            ),
          ),
          hoverColor: Colors.grey,
          filled: true,
          focusColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }
}
