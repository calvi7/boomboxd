import 'package:boomboxd/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGreeting extends StatelessWidget {
  const HomeGreeting({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  RichText _greet(String username) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.openSans(
          fontSize: 24,
          color: Colors.white,
        ),
        children: [
          const TextSpan(text: "Hello, "),
          TextSpan(
            text: username,
            style: TextStyle(
              color: AppColors.secondaryColor,
            ),
          ),
          const TextSpan(text: "!"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _greet(username),
        Text(
          "Review or track songs you've listened to",
          style: GoogleFonts.openSans(),
        ),
      ],
    );
  }
}
