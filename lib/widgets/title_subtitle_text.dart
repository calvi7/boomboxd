import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSubtitleText extends StatelessWidget {
  const TitleSubtitleText({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;

  Text _styled(String text, double fontSize) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: fontSize,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _styled(title, 24),
        _styled(subtitle, 14),
      ],
    );
  }
}
