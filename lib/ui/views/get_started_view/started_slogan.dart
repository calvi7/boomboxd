import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartViewSlogan extends StatelessWidget {
  const StartViewSlogan({
    required this.slogan,
    Key? key,
  }) : super(key: key);

  final String slogan;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.6,
      child: Text(
        '"$slogan."',
        textAlign: TextAlign.center,
        style: GoogleFonts.robotoSerif(
          fontSize: 16,
        ),
      ),
    );
  }
}
