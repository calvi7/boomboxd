import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserMadeListOuter extends StatelessWidget {
  const UserMadeListOuter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgList = [
      for (int i = 0; i < 4; i++) const AssetImage("drake-cover.png"),
    ];

    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explore Popular Lists",
            style: GoogleFonts.openSans(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StackedCovers(imageList: imgList),
                _StackedCovers(imageList: imgList),
                _StackedCovers(imageList: imgList),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StackedCovers extends StatelessWidget {
  const _StackedCovers({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  final List<ImageProvider<Object>> imageList;

  @override
  Widget build(BuildContext context) {
    int count = imageList.length <= 4 ? imageList.length : 4;
    return SizedBox(
      child: Stack(
        children: [
          for (int i = 0; i < count; i++)
            Column(
              children: [
                _StackedImage(position: i, image: imageList[i]),
              ],
            ),
        ],
      ),
    );
  }
}

class _StackedImage extends StatelessWidget {
  const _StackedImage({
    required this.image,
    required this.position,
    Key? key,
  }) : super(key: key);

  final int position;
  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: position * 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: image,
            ),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black45,
                blurRadius: 0.5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
