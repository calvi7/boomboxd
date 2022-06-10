import '/constants.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
    Key? key,
    required this.hint,
    this.isPassword = false,
    required this.icon,
  }) : super(key: key);

  final String hint;
  final bool isPassword;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 64,
        right: 64,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: AppColors.thirdColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          fillColor: AppColors.grey,
          isDense: true,
          filled: true,
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        textAlign: TextAlign.left,
        obscureText: isPassword,
      ),
    );
  }
}
