import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CupertinoIcons.music_albums,
            size: 42,
          ),
          const SizedBox(height: 10),
          Text(
            "Boomboxd. ",
            textAlign: TextAlign.center,
            style: GoogleFonts.robotoSerif(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
