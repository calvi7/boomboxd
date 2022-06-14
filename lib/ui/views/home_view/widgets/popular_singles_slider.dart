import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SongSlider extends StatelessWidget {
  const SongSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Popular Singles",
            style: GoogleFonts.openSans(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                var imgPath = index % 2 != 0
                    ? "assets/dsotm-cover.png"
                    : "assets/drake-cover.png";
                return Row(
                  children: [
                    _SingleCover(imgPath: imgPath),
                    SizedBox(width: 10.0 * index),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _SingleCover extends StatelessWidget {
  const _SingleCover({
    Key? key,
    required this.imgPath,
  }) : super(key: key);

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(imgPath),
        ),
      ),
    );
  }
}
