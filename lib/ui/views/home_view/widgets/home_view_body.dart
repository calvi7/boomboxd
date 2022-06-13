import 'package:boomboxd/ui/views/home_view/widgets/popular_singles_slider.dart';
import 'package:flutter/material.dart';

import '/core/models/user.dart';
import 'home_greeting.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    Key? key,
    required this.mockUser,
  }) : super(key: key);

  final User mockUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeGreeting(username: mockUser.displayName),
        const SizedBox(height: 10),
        const SongSlider(),
      ],
    );
  }
}
