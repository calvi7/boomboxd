import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'user_image.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    Key? key,
    required this.image,
  }) : super(key: key);

  final ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      elevation: 0,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: const Icon(
              CupertinoIcons.line_horizontal_3,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: UserImage(
            height: preferredSize.height,
            image: image,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
