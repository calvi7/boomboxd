import 'package:boomboxd/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import '/constants.dart';
import '/widgets/widgets.dart';
import '/core/models/models.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  final User mockUser = User(
    displayName: "Guybrush",
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
            child: HomeViewBody(mockUser: mockUser),
          ),
        ),
      ),
    );
  }
}
