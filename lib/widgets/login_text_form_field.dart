import '/constants.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
    this.isPassword = false,
  }) : super(key: key);

  final String hint;
  final bool isPassword;
  final IconData icon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32,
        left: 64,
        right: 64,
      ),
      child: TextFormField(
        controller: controller,
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
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
