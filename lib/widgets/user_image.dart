import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.height,
    required this.image,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: image),
      ),
    );
  }
}
