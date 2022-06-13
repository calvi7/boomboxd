import 'package:boomboxd/ui/views/home_view/widgets/home_greeting.dart';
import 'package:boomboxd/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/widgets.dart';
import '/core/models/models.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  final User mockUser = User(
    displayName: "Guy",
    handle: "guybrush_threepwood",
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const CustomDrawer(),
        appBar: CustomAppbar(
          image: AssetImage(
            mockUser.pathToImage,
          ),
        ),
        backgroundColor: AppColors.mainColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                HomeGreeting(username: mockUser.displayName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
