import 'package:flutter/material.dart';

import 'started_slogan.dart';
import 'get_started_view.dart';

import '/ui/views/login_view/login_view.dart';

import '/widgets/widgets.dart';
import '/constants.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(),
        Container(),
        const AppLogo(),
        StartViewSlogan(slogan: AppStrings.slogan),
        AppEntryButton(
          callback: () {
            Navigator.of(context).pushReplacement(
              AnimatedRouter.route(
                const GetStartedView(),
                const LoginView(),
              ),
            );
          },
          text: "Get Started",
        )
      ],
    );
  }
}
