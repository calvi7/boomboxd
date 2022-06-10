import 'package:flutter/material.dart';

class AnimatedRouter {
  /// Uses the provided transitionBuilder to route to the target Widget passed as argument
  /// Slides the target page in from the left, and makes the current one slide out as well
  ///
  /// Could implement checks later to ensure you can't pass a random Widget
  static Route route(Widget currentView, Widget targetView) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, _) => targetView,
      transitionsBuilder: (context, animation, _, child) {
        const currentOffset = Offset.zero;
        const rightOffset = Offset(1, 0);
        const leftOffset = Offset(-1, 0);

        return Stack(
          children: <Widget>[
            SlideTransition(
              position: Tween<Offset>(
                begin: currentOffset,
                end: leftOffset,
              ).animate(animation),
              child: currentView,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: rightOffset,
                end: currentOffset,
              ).animate(animation),
              child: targetView,
            ),
          ],
        );
      },
    );
  }
}
