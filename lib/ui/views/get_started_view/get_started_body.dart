import '/constants.dart';
import '/ui/views/get_started_view/started_slogan.dart';
import '/widgets/app_entry_button.dart';
import 'package:flutter/material.dart';

import '../../../widgets/app_logo.dart';

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
          callback: () {},
          text: "Get Started",
        )
      ],
    );
  }
}
