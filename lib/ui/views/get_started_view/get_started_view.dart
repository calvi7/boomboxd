import 'package:flutter/material.dart';

import 'get_started_background.dart';

import '../../../constants.dart';
import 'get_started_body.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GetStartedBackground(
            sigma: 2,
            color: AppColors.mainColor,
          ),
          const Center(
            child: GetStartedBody(),
          ),
        ],
      ),
    );
  }
}
